class Elixir < ApplicationRecord
  belongs_to :spell, optional: true
  validates :name, presence: true
  validates :difficulty, presence: true
end
