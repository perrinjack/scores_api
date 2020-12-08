FactoryBot.define do
    factory :season do
      id { 1 }
      title { Faker::Lorem.word }
      created_at { Time.now }
    end
  end