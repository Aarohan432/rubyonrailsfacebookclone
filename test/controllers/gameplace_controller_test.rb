require "test_helper"

class GameplaceControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get gameplace_view_url
    assert_response :success
  end

  test "should get Market" do
    get gameplace_Market_url
    assert_response :success
  end
end
