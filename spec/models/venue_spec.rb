require 'spec_helper'

describe Venue do
  describe "basic attributes" do
    before { @venue = create(:venue) }

    subject { @venue }

    it { should be_valid }
    it { should respond_to(:name) }
    it { should respond_to(:address) }
  end 

  describe "with invalid params" do
    before { @venue = build(:venue, name: " ") }
    subject { @venue }

    it { should_not be_valid }
  end
end
