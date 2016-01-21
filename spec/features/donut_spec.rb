require 'rails_helper'

feature "User views the home page" do
  scenario "sees a list of donuts" do
    visit '/donuts'
    expect(page).to have_content("Donut")
  end
end  