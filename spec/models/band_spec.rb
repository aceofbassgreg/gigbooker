require 'spec_helper'

describe Band do
  describe "basic attributes" do
    before { @band = create(:band) }
    subject { @band }

    it { should be_valid }
    it { should respond_to(:name) }
    # it { should respond_to(:contact_email) }
    it { should respond_to(:travel_radius) }
    it { should respond_to(:location) }
  end 

  describe "with invalid params" do
    context "no name" do
      before { @band = build(:band, name: " ") }
      subject { @band }

      it { should_not be_valid }
    end

    # context "no contact email" do
    #   before { @band = build(:band, contact_email: " ") }
    #   subject { @band }

    #   it { should_not be_valid }
    # end

    context "no travel radius" do
      before { @band = build(:band, travel_radius: " ") }
      subject { @band }

      it { should_not be_valid }
    end

    context "no location" do
      before { @band = build(:band, location: " ") }
      subject { @band }

      it { should_not be_valid }
    end
  end
end
