class CreateAgences < ActiveRecord::Migration[7.0]
  def change
    create_table :agences do |t|
      t.string :name
      t.integer :register_number
      t.string :road
      t.string :avenue
      t.string :contact

      t.timestamps
    end
  end
end