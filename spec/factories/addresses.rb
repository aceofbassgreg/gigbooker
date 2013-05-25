# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street_address "1234 Example Street"
    city "Exampleland"
    state "VA"
    postal_code 12345
    latitude 10
    longitude 10
  end
end
