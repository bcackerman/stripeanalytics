class AddIndexes < ActiveRecord::Migration
  def change
  	add_index :customers, :subscription_status
  end
end
