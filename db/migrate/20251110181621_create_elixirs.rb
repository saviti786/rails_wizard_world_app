class CreateElixirs < ActiveRecord::Migration[8.0]
  def change
    create_table :elixirs do |t|
      t.string :name
      t.text :effect
      t.string :difficulty

      t.timestamps
    end
  end
end
