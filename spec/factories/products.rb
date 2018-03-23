FactoryGirl.define do
  factory :product do
    name     { Faker::Name.name }
    category { Faker::Lorem.word }
    price    { Faker::Number.number(3) }
  end
end