FactoryBot.define do
  factory :trip do
    destiny_id { 1 }
    user_id { 1 }
    date { 'randomdate' }
    destiny_name { 'randomcity' }
  end
end
