FactoryBot.define do
  factory :item do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Number.within(range: 100..1000)}
  end
end
