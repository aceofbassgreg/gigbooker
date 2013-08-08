require 'spec_helper'

feature 'Venue Show (Profile) Page' do
  let(:venue) { @venue = create(:venue) }

  scenario 'basic venue show page elements' do
    visit venue_path(venue)

    expect(page).to have_content(@venue.name)
    expect(page).to have_content(@venue.address)
    expect(page).to have_content(@venue.gigs)
  end 
end