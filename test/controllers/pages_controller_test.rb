# typed: false
require "application_integration_test_case"

class PagesControllerTest < ApplicationIntegrationTestCase
  test "can get home when logged in" do
    get "/"
    assert_response :redirect
  end

  test "auth is required for home page" do
    sign_in users(:staff_user)
    get "/"
    assert_response :success
  end
end
