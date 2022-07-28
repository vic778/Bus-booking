class CreateAgences < ActiveRecord::Migration[7.0]
  def change
    create_table :agences do |t|
      t.string :name
      t.string :register_number
      t.string :road
      t.string :avenue
      t.string :contact
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
