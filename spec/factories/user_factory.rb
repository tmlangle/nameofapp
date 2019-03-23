FactoryBot.define do
  # sequence(:email) {|n| "person3#{n}@example.com" }
  factory :user do
    email "person@example.com"
    password "444444"
    admin false
  end
end
