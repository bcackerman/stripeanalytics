require 'spec_helper'

describe "charges/show" do
  before(:each) do
    @charge = assign(:charge, stub_model(Charge,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Charge/)
    rendered.should match(/Object/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/Currency/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/Card Last4/)
    rendered.should match(/9.99/)
    rendered.should match(/Customer/)
    rendered.should match(/Invoice/)
  end
end
