require 'spec_helper'

feature "User management" do

  let(:visitor) { FactoryGirl.create(:user) }

  scenario "Unknown user can't login" do
    visit '/'

    click_link 'Sign In'

    fill_in "Email", with: "none@none.com"
    fill_in "Password", with: "password"
    click_button "Sign in"

    expect(page).to have_text("Invalid email or password.")
  end

  scenario "Known user can login" do
    visit '/'

    click_link 'Sign In'

    fill_in "Email", with: visitor.email
    fill_in "Password", with: visitor.password
    click_button "Sign in"

    expect(page).to have_text("Sign Out")
  end

  scenario "Logged in user can sign out" do
    visit '/'

    click_link 'Sign In'

    fill_in "Email", with: visitor.email
    fill_in "Password", with: visitor.password
    click_button "Sign in"

    expect(page).to have_text("Sign Out")
    click_link "Sign Out"
    expect(page).to have_text("Signed out successfully.")
  end

end
