class AddArrivalToDrones < ActiveRecord::Migration[5.0]
  def change
    add_column :drones, :arrival, :string
  end
end
