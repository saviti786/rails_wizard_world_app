class AddSpellRefToElixirs < ActiveRecord::Migration[8.0]
  def change
    add_reference :elixirs, :spell, null: false, foreign_key: true
  end
end
