class AddCreatedToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :created, :datetime
  end
end
