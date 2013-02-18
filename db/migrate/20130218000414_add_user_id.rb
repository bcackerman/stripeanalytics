class AddUserId < ActiveRecord::Migration
  def change
  	add_column :charges, :user_id, :integer
  	add_column :customers, :user_id, :integer
  	add_index :charges, :user_id
  	add_index :customers, :user_id
  end
end
