require 'spec_helper'

feature 'New Venue Registration' do
  let(:address) { create(:address) }
  let(:venue) { attributes_for(:venue) }


  scenario 'with valid params' do
    visit new_venue_path

    fill_in "What is your venue's name?", {with: venue[:name]}
    fill_in "Street Address:", {with: address[:street_address]}
    fill_in "City:", {with: address[:city]}
    fill_in "State:", {with: address[:state]}
    fill_in "Postal Code:", {with: address[:postal_code]}

    click_button "Register my Venue!"

    expect(page).to have_content('Congratulations! Your venue has been added!')
    expect(page).to have_content(venue[:name])
  end

  scenario 'with invalid params' do
    visit new_venue_path

    fill_in "What is your venue's name?", {with: " "}

    click_button 'Register my Venue!'

    expect(page).to have_content('Please fill out all fields.')
  end
end