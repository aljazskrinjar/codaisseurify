

FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.name }
    age   { Faker::Number.number(2) }
    bio   { Faker::Lorem.sentence }
  end
end
