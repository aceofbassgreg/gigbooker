# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :band do
    sequence(:name) { |n| "Band#{n}" }
    sequence(:travel_radius) { |n| "#{n} miles"} 
    sequence(:contact_email) { |n| "band#{n}@gmail.com" }
    sequence(:location) { |n| "#{n} City" }
  end
end
