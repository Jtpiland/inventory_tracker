FactoryBot.define do
  factory :warehouse do
    name {Faker::Beer.name}
    city {Faker::Address.city}
    state {Faker::Address.state_abbr}
  end
end
