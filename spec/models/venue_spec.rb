require 'spec_helper'

describe Venue do
  describe "basic attributes" do
    before { @venue = create(:venue_with_gigs, :gig_count => 10) }

    subject { @venue }

    it { should be_valid }
    it { should respond_to(:name) }
    it { should respond_to(:address) }
    it { should respond_to(:gigs) }
  end 

  describe "with invalid params" do
    before { @venue = build(:venue, name: " ") }
    subject { @venue }

    it { should_not be_valid }
  end
end
