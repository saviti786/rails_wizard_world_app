class Spell < ApplicationRecord
  has_many :elixirs
  validates :name, presence: true
  validates :effect, presence: true
end
