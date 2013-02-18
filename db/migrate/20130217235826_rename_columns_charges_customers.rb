class RenameColumnsChargesCustomers < ActiveRecord::Migration
  def up
  	rename_column :charges, :object, :object_charge
  	rename_column :customers, :object, :object_customer
  end

  def down
  	rename_column :charges, :object_charge, :object
  	rename_column :customers, :object_customer, :object
  end
end
