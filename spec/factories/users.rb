FactoryBot.define do
  factory :user do
    name { "Example Name" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
  end
end
