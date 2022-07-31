class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :name
      t.string :model
      t.string :boarding
      t.string :destination
      t.string :no_of_seats
      t.references :agence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
