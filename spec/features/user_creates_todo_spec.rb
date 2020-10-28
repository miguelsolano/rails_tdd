require 'rails_helper'

feature "User attempts to create todo" do

  scenario "successfully" do
    visit root_path

    click_on "Add a new todo"
    fill_in "Title", with: "Learn TDD in ruby"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Learn TDD in ruby"
  end
end
