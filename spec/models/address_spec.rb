require 'spec_helper'

describe Address do
  describe "basic attributes" do
    before { @address = create(:address, venue: @venue) }

    subject { @address }

    it { should respond_to(:street_address) }
    it { should respond_to(:city) }
    it { should respond_to(:state) }
    it { should respond_to(:postal_code) }
    it { should respond_to(:latitude) }
    it { should respond_to(:longitude) }
  end 
end
