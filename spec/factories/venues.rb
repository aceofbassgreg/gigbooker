FactoryGirl.define do
  factory :venue do
    sequence(:name) { |n| "ExampleVenue#{n}" }
    address


    factory :venue_with_gigs do
      ignore do
        gig_count 5
      end

      after(:create) do |venue, evaluator|
        FactoryGirl.create_list(:gig, evaluator.gig_count , venue: venue)
      end
    end
  end
end
