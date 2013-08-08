require 'spec_helper'

feature 'Home Page' do

before { visit root_path }

  scenario 'new user visiting page' do
    expect(page).to have_content("GigBooker")
    expect(page).to have_content("Helping up-and-coming bands find venues")

    click_link("Register Your Band!")

    expect(page).to have_content("Band Registration Page")

    visit root_path
    click_link("Register Your Venue!")

    expect(page).to have_content("Venue Registration Page")
  end
end