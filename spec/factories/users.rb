FactoryBot.define do
    factory :user do
      name { Faker::Name.name }
      email { Faker::Internet.email }
      password { Faker::Simpsons.character }
    end
  end