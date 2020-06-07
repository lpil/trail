# typed: false
require "application_system_test_case"

class UserAuthenticationsTest < ApplicationSystemTestCase
  test "signing in" do
    user = users(:staff_user)

    # Home page requires auth
    visit "/"
    assert_equal page.current_path, "/users/sign-in"

    # Wrong password
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: "wrong password"
    click_on "Sign in"
    assert_equal page.current_path, "/users/sign-in"
    assert_content I18n.t("devise.failure.invalid")

    # Right password
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: "123greetings"
    click_on "Sign in"
    assert_content I18n.t("devise.sessions.signed_in")
    assert_equal page.current_path, "/"
  end
end
