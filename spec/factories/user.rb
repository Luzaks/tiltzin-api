FactoryBot.define do
  factory :user do
    username { 'John' }
    email { 'john@he.com' }
    password { 'randompassword' }
  end
end
