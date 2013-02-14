require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :id_customer => "Id Customer",
      :object => "Object",
      :livemode => false,
      :description => "Description",
      :card_last4 => "Card Last4",
      :discount => "9.99",
      :subscription_start => "",
      :subscription_customer => "Subscription Customer",
      :subscription_cancel_at_period_end => false,
      :subscription_plan_interval => "Subscription Plan Interval",
      :subscription_plan_name => "Subscription Plan Name",
      :subscription_plan_amount => "9.99",
      :subscription_plan_livemode => false,
      :subscription_plan_trial_period_days => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Customer/)
    rendered.should match(/Object/)
    rendered.should match(/false/)
    rendered.should match(/Description/)
    rendered.should match(/Card Last4/)
    rendered.should match(/9.99/)
    rendered.should match(//)
    rendered.should match(/Subscription Customer/)
    rendered.should match(/false/)
    rendered.should match(/Subscription Plan Interval/)
    rendered.should match(/Subscription Plan Name/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
