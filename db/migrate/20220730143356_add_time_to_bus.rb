class AddTimeToBus < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :time, :string
  end
end
