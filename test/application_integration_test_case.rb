# typed: strong
require "test_helper"

class ApplicationIntegrationTestCase < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end
