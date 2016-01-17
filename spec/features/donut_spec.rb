require 'rails_helper'

feature "User views the home page" do
  scenario "and clicks on a donut" do
    visit '/donuts'
    find('.donut h4').click
    expect(page).to have_content("User won!!")
  end
end  