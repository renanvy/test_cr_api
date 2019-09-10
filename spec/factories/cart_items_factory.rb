FactoryBot.define do
  factory :cart_item do
    cart
    medicine
    value { 10.00 }
    quantity { 1 }
  end
end