require 'rails_helper'
require './spec/helpers/users_helper_spec'

feature "Login" do
  scenario "user can login" do
    signup
    visit "/sessions/new"
    fill_in "Username", with: "KP"
    fill_in "Password", with: "pa$$word"
    click_button "Submit"

    expect(page).to have_current_path(users_url)
  end
end
