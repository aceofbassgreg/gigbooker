# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    sequence(:street_address) { |n| "#{n} Example Street" }
    sequence(:city) { |n| "#{n} City" }
    state "VA"
    postal_code 12345
    latitude 10
    longitude 10
  end
end
