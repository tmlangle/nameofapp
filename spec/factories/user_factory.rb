FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "444444"
    name "tom tom"
    admin false
  end

end
