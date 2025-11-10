# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'net/http'
require 'json'

# Fetch Spells
puts "Fetching Spells..."
spell_url = URI("https://wizard-world-api.herokuapp.com/Spells")
spells = JSON.parse(Net::HTTP.get(spell_url))
spells.each do |s|
  Spell.create!(
    name: s["name"],
    incantation: s["incantation"],
    effect: s["effect"],
    spell_type: s["type"],
    light: s["light"]
  )
end

# Fetch Elixirs
puts "Fetching Elixirs..."
elixir_url = URI("https://wizard-world-api.herokuapp.com/Elixirs")
elixirs = JSON.parse(Net::HTTP.get(elixir_url))
elixirs.each do |e|
  Elixir.create!(
  name: e["name"],
  effect: e["effect"],
  difficulty: e["difficulty"],
  spell: Spell.all.sample  # randomly assign a spell
)
end

puts "Done seeding!"
