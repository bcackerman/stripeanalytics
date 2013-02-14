class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :id_customer
      t.string :object
      t.datetime :created
      t.boolean :livemode
      t.string :description
      t.string :card_last4
      t.decimal :discount
      t.datetime :subscription_start
      t.boolean :subscription_status
      t.string :subscription_customer
      t.boolean :subscription_cancel_at_period_end
      t.datetime :subscription_current_period_start
      t.datetime :subscription_current_period_end
      t.datetime :subscription_ended_at
      t.datetime :subscription_trial_start
      t.datetime :subscription_trial_end
      t.datetime :subscription_canceled
      t.string :subscription_plan_interval
      t.string :subscription_plan_name
      t.decimal :subscription_plan_amount
      t.boolean :subscription_plan_livemode
      t.integer :subscription_plan_trial_period_days

      t.timestamps
    end
  end
end
