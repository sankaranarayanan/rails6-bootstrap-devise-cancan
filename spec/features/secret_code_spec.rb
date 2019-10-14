require "rails_helper"

RSpec.feature "Secret Code", :type => :feature do
  scenario "User creates a secret code" do
    visit "/secret_codes"

    expect(page).to have_text("Secret Code")
  end
end
