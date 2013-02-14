# == Schema Information
#
# Table name: customers
#
#  id                                  :integer          not null, primary key
#  id_customer                         :string(255)
#  object                              :string(255)
#  created                             :datetime
#  livemode                            :boolean
#  description                         :string(255)
#  card_last4                          :string(255)
#  discount                            :decimal(, )
#  subscription_start                  :datetime
#  subscription_status                 :boolean
#  subscription_customer               :string(255)
#  subscription_cancel_at_period_end   :boolean
#  subscription_current_period_start   :datetime
#  subscription_current_period_end     :datetime
#  subscription_ended_at               :datetime
#  subscription_trial_start            :datetime
#  subscription_trial_end              :datetime
#  subscription_canceled               :datetime
#  subscription_plan_interval          :string(255)
#  subscription_plan_name              :string(255)
#  subscription_plan_amount            :decimal(, )
#  subscription_plan_livemode          :boolean
#  subscription_plan_trial_period_days :integer
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#

class Customer < ActiveRecord::Base
  attr_accessible :card_last4, :created, :description, :discount, :id_customer, :livemode, :object, :subscription_cancel_at_period_end, :subscription_canceled, :subscription_current_period_end, :subscription_current_period_start, :subscription_customer, :subscription_ended_at, :subscription_plan_amount, :subscription_plan_interval, :subscription_plan_livemode, :subscription_plan_name, :subscription_plan_trial_period_days, :subscription_start, :subscription_trial_end, :subscription_trial_start
end
