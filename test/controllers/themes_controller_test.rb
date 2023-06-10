require "test_helper"

class ThemesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get themes_index_url
    assert_response :success
  end

  test "should get create" do
    get themes_create_url
    assert_response :success
  end
end
