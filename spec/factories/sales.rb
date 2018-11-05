FactoryBot.define do
    factory :sale do
        item_description { Faker::Lorem.word }
        author { Faker::StarWars.character  }
        total_extax_value { Faker::Number.number(3) }
    end
end