class CreateSpells < ActiveRecord::Migration[8.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :incantation
      t.text :effect
      t.string :spell_type
      t.string :light

      t.timestamps
    end
  end
end
