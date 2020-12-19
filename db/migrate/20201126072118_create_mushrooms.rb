class CreateMushrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mushrooms do |t|
      t.string :name, autocomplete: 'off'

      t.timestamps
    end
  end
end
