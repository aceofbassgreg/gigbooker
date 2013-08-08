FactoryGirl.define do
  factory :gig do
    sequence(:name) { |n| "#{n} Show" }
    venue
  end
end