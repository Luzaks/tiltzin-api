FactoryBot.define do
  factory :destiny do
    url { Faker::Lorem.word }
    city { Faker::Lorem.word }
    country { Faker::Lorem.word }
    family { Faker::Lorem.word }
    description { Faker::Lorem.word }
    state { Faker::Lorem.word }
    famdescription { Faker::Lorem.word }
  end
end
