require 'rails_helper'

feature "User views the home page" do
  scenario "sees a list of donuts" do
    visit '/donuts'
    expect(page).to have_content("Donut")
  end

  scenario "clicks on a donut" do
    visit '/donuts'
    click_link('.donut_link')
    expect(page).to have_content("Each donut is different each day.") 
  end
end  