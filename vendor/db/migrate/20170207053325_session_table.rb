class SessionTable < ActiveRecord::Migration
  def change
  	 create_table :session do |t|
      t.string :session
      t.string :cookie
      t.timestamps null: false
    end
  end
end
