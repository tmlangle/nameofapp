FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :admin, class: User do
    email
    password "444444"
    name "tom tom"
    admin false
  end

end
