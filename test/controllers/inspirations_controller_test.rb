require "test_helper"

class InspirationsControllerTest < ActionDispatch::IntegrationTest
  test "should get random" do
    get inspirations_random_url
    assert_response :success
  end
end
