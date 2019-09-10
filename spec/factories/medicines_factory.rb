FactoryBot.define do
  factory :medicine do
    factory :aspirina do
      name { 'Aspirina' }
      value { 10.00 }
      quantity { 10 }
      stock { 10 }
    end

    factory :amoxilina do
      name { 'Amoxilina' }
      value { 20.50 }
      quantity { 10 }
      stock { 10 }
    end
  end
end