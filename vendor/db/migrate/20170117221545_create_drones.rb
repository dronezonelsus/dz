class CreateDrones < ActiveRecord::Migration
  def change
    create_table :drones do |t|
      t.integer :droneNumber
      t.string :droneName
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
