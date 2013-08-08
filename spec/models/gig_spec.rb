require 'spec_helper'

describe Gig do
  describe "basic attributes" do
    before { @gig = create(:gig) }
    subject { @gig }
  

    it { should respond_to(:name) }
    it { should respond_to(:venue_id) }

  end
end
