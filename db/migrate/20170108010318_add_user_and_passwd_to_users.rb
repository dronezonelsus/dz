class AddUserAndPasswdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :User, :text
    add_column :users, :Password, :text
  end
end
