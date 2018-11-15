require 'rails_helper'

feature "user uploads sentia list csv", :js do
  scenario "user uploads valid csv file and sees uploaded rows content" do
    visit 'https://sentia-coding-test.herokuapp.com'
    page.attach_file("file", Rails.root.join("spec", "fixtures", "files", "sentia.csv"), visible: false)
    click_button "Upload CSV"
  end
  scenario "user clicks upload CSV and displays an error" do
    visit 'https://sentia-coding-test.herokuapp.com'
    click_button('Upload CSV')
  end
  scenario "fill in search bar" do
    visit 'https://sentia-coding-test.herokuapp.com'
    fill_in('search', :with => 'David')
    click_button('Search')
  end
end
