FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name }
    email { Faker::Internet.email }
    password { 'randompassword' }
    password_confirmation { 'randompassword' }
  end
end
