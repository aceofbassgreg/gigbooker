require 'spec_helper'

feature 'Band Show (Profile) Page' do
  let(:band) { @band = create(:band) }

  scenario 'basic band show page elements' do
    visit band_path(band)

    within(".info-box") do
      expect(page).to have_content(@band.name)
      expect(page).to have_content(@band.contact_email)
      expect(page).to have_content(@band.location)
    end
  end 
end