class AddLivemodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :livemode, :boolean
  end
end
