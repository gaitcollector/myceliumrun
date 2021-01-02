class CreatePetriDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :petri_dishes do |t|
      t.string :name, null: false
      t.string :sample
      t.text :description, null: false
      t.text :protocol
      t.boolean :inoculated
      t.datetime :inoculated_at
      t.boolean :run_started
      t.datetime :run_started_at
      t.boolean :fully_colonized
      t.datetime :fully_colonized_at
      t.references :mushroom, null: false, foreign_key: true
      t.references :agar_recipe, foreign_key: true
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
