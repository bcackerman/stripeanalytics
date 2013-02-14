class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :id_charge
      t.string :object
      t.boolean :livemode
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded
      t.decimal :fee
      t.string :card_last4
      t.decimal :amount_refunded
      t.string :customer
      t.string :invoice

      t.timestamps
    end
  end
end
