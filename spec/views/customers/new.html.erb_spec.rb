require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :id_customer => "MyString",
      :object => "MyString",
      :livemode => false,
      :description => "MyString",
      :card_last4 => "MyString",
      :discount => "9.99",
      :subscription_start => "",
      :subscription_customer => "MyString",
      :subscription_cancel_at_period_end => false,
      :subscription_plan_interval => "MyString",
      :subscription_plan_name => "MyString",
      :subscription_plan_amount => "9.99",
      :subscription_plan_livemode => false,
      :subscription_plan_trial_period_days => 1
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_id_customer", :name => "customer[id_customer]"
      assert_select "input#customer_object", :name => "customer[object]"
      assert_select "input#customer_livemode", :name => "customer[livemode]"
      assert_select "input#customer_description", :name => "customer[description]"
      assert_select "input#customer_card_last4", :name => "customer[card_last4]"
      assert_select "input#customer_discount", :name => "customer[discount]"
      assert_select "input#customer_subscription_start", :name => "customer[subscription_start]"
      assert_select "input#customer_subscription_customer", :name => "customer[subscription_customer]"
      assert_select "input#customer_subscription_cancel_at_period_end", :name => "customer[subscription_cancel_at_period_end]"
      assert_select "input#customer_subscription_plan_interval", :name => "customer[subscription_plan_interval]"
      assert_select "input#customer_subscription_plan_name", :name => "customer[subscription_plan_name]"
      assert_select "input#customer_subscription_plan_amount", :name => "customer[subscription_plan_amount]"
      assert_select "input#customer_subscription_plan_livemode", :name => "customer[subscription_plan_livemode]"
      assert_select "input#customer_subscription_plan_trial_period_days", :name => "customer[subscription_plan_trial_period_days]"
    end
  end
end
