class AddLastTimeStripePulledToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_time_stripe_pulled, :datetime
    add_index :users, :last_time_stripe_pulled
  end
end
