class ChangeDronenumberTypeAgainInDronesTable < ActiveRecord::Migration[5.0]
  def up
  	change_column :drones, :drone_number, :string
  end

  def down
  	change_column :drones, :drone_number, :integer
  end
end
