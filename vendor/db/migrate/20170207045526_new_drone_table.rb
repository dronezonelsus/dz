class NewDroneTable < ActiveRecord::Migration
  def change
  	add_column :drones, :user_id, :integer
  	rename_column :drones, :droneNumber, :drone_number
  	rename_column :drones, :droneName, :drone_name
  end
end
