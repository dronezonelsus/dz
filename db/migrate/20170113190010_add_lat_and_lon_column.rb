class AddLatAndLonColumn < ActiveRecord::Migration
  def change
  	add_column :users, :Latitude, :float
    add_column :users, :Longitude, :float
  end
end
