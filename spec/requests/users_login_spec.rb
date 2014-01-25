require 'spec_helper'

describe "Known user can login" do
  let(:known_visitor) { create(:user) }

  it "when clicks the sign in link" do
    visit '/'

    click_link 'Sign In'

    fill_in "Email", with: known_visitor.email
    fill_in "Password", with: known_visitor.password
    click_button "Sign in"

    expect(page).to have_text("Sign Out")
  end
end
