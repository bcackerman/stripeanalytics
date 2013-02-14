# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    id_customer "MyString"
    object "MyString"
    created "2013-02-14 00:37:27"
    livemode false
    description "MyString"
    card_last4 "MyString"
    discount "9.99"
    subscription_start ""
    subscription_customer "MyString"
    subscription_cancel_at_period_end false
    subscription_current_period_start "2013-02-14 00:37:27"
    subscription_current_period_end "2013-02-14 00:37:27"
    subscription_ended_at "2013-02-14 00:37:27"
    subscription_trial_start "2013-02-14 00:37:27"
    subscription_trial_end "2013-02-14 00:37:27"
    subscription_canceled "2013-02-14 00:37:27"
    subscription_plan_interval "MyString"
    subscription_plan_name "MyString"
    subscription_plan_amount "9.99"
    subscription_plan_livemode false
    subscription_plan_trial_period_days 1
  end
end
