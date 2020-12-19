class CreateAgarRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :agar_recipes do |t|
      t.string :abbreviation, autocomplete: 'off'
      t.string :name, autocomplete: 'off'
      t.text :recipe
      t.text :method
      t.text :description

      t.timestamps
    end
  end
end
