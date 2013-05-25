# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :band do
    name "BandExample"
    travel_radius 15
    contact_email "BandExample@example.com"
    location "Fooplace"
  end
end
