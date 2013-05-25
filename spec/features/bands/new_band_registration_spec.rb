require 'spec_helper'

feature 'New Band Registration' do
  let(:band) { attributes_for(:band) }

  scenario 'with valid params' do
    visit new_band_path

    fill_in "What is your band's name?", {with: band[:name]}
    fill_in "Where is your band located?", {with: band[:location]}
    fill_in "How far are you willing to travel?", {with: band[:travel_radius]}
    fill_in "What is your band's email address?", {with: band[:contact_email]}

    click_button "Register my Band!"

    expect(page).to have_content('Congratulations! Your band has been added!')
    expect(page).to have_content(band[:name])
  end

  scenario 'with invalid params' do
    visit new_band_path

    fill_in "What is your band's name?", {with: " "}
    fill_in 'Where is your band located?', {with: " "}
    fill_in "What is your band's email address?", {with: " "}
    fill_in 'How far are you willing to travel?', {with: " "}

    click_button 'Register my Band!'

    expect(page).to have_content('Please fill out all fields.')
  end
end