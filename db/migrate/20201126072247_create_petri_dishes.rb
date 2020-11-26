class CreatePetriDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :petri_dishes do |t|
      t.string :name
      t.references :mushroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
