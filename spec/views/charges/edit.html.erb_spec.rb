require 'spec_helper'

describe "charges/edit" do
  before(:each) do
    @charge = assign(:charge, stub_model(Charge,
      :id_charge => "MyString",
      :object => "MyString",
      :livemode => false,
      :paid => false,
      :amount => "9.99",
      :currency => "MyString",
      :refunded => false,
      :fee => "9.99",
      :card_last4 => "MyString",
      :amount_refunded => "9.99",
      :customer => "MyString",
      :invoice => "MyString"
    ))
  end

  it "renders the edit charge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charges_path(@charge), :method => "post" do
      assert_select "input#charge_id_charge", :name => "charge[id_charge]"
      assert_select "input#charge_object", :name => "charge[object]"
      assert_select "input#charge_livemode", :name => "charge[livemode]"
      assert_select "input#charge_paid", :name => "charge[paid]"
      assert_select "input#charge_amount", :name => "charge[amount]"
      assert_select "input#charge_currency", :name => "charge[currency]"
      assert_select "input#charge_refunded", :name => "charge[refunded]"
      assert_select "input#charge_fee", :name => "charge[fee]"
      assert_select "input#charge_card_last4", :name => "charge[card_last4]"
      assert_select "input#charge_amount_refunded", :name => "charge[amount_refunded]"
      assert_select "input#charge_customer", :name => "charge[customer]"
      assert_select "input#charge_invoice", :name => "charge[invoice]"
    end
  end
end
