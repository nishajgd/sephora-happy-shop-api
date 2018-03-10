FactoryGirl.define do
  factory :product do
    name     { Faker::Name.name }
    category { Faker::Category.category }
    price    { Faker::Price.price }
  end
end