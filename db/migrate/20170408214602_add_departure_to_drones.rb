class AddDepartureToDrones < ActiveRecord::Migration[5.0]
  def change
    add_column :drones, :departure, :string
  end
end
