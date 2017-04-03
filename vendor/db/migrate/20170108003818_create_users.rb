class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :CompanyName
      t.string :CompanyEmail
      t.integer :Stock

      t.timestamps null: false
    end
  end
end
