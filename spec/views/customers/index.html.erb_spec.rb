require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
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
      ),
      stub_model(Customer,
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
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Object".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Card Last4".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Subscription Customer".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Subscription Plan Interval".to_s, :count => 2
    assert_select "tr>td", :text => "Subscription Plan Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
