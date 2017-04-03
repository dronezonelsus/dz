class NewUserTable < ActiveRecord::Migration
  def change
  	remove_column :users, :Latitude, :float
  	remove_column :users, :Longitude, :float
  	remove_column :users, :User, :float
  	remove_column :users, :CompanyEmail, :string
  	remove_column :users, :Stock, :integer
  	remove_column :users, :updated_at, :string
  	rename_column :users, :CompanyName, :company_name
  	rename_column :users, :Password, :password
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :email, :string
  	add_column :users, :admin, :boolean
  	add_column :users, :status, :string
  	add_column :users, :last_login, :integer
  end
end
