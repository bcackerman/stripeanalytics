require 'spec_helper'

describe "charges/index" do
  before(:each) do
    assign(:charges, [
      stub_model(Charge,
        :id_charge => "Id Charge",
        :object => "Object",
        :livemode => false,
        :paid => false,
        :amount => "9.99",
        :currency => "Currency",
        :refunded => false,
        :fee => "9.99",
        :card_last4 => "Card Last4",
        :amount_refunded => "9.99",
        :customer => "Customer",
        :invoice => "Invoice"
      ),
      stub_model(Charge,
        :id_charge => "Id Charge",
        :object => "Object",
        :livemode => false,
        :paid => false,
        :amount => "9.99",
        :currency => "Currency",
        :refunded => false,
        :fee => "9.99",
        :card_last4 => "Card Last4",
        :amount_refunded => "9.99",
        :customer => "Customer",
        :invoice => "Invoice"
      )
    ])
  end

  it "renders a list of charges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Charge".to_s, :count => 2
    assert_select "tr>td", :text => "Object".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Card Last4".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Invoice".to_s, :count => 2
  end
end
