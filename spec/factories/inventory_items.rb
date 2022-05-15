FactoryBot.define do
  factory :inventory_item do
    item
    warehouse
    quantity {Faker::Number.within(range: 1..100)}
  end
end
