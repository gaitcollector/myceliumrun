class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.text :body
      t.integer :loggable_id
      t.string :loggable_type

      t.timestamps
    end
  end
end
