FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "444444"
    name "tom tom"
    admin false
  end

  factory :product do
    colour "red"
    name "cool turtle"
    price "$44"
    description "pretty cool"
  end


end
