# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :charge do
    id_charge "MyString"
    object "MyString"
    livemode false
    paid false
    amount "9.99"
    currency "MyString"
    refunded false
    fee "9.99"
    card_last4 "MyString"
    amount_refunded "9.99"
    customer "MyString"
    invoice "MyString"
  end
end
