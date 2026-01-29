require "test_helper"

class MarketplaceControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get marketplace_view_url
    assert_response :success
  end

  test "should get Market" do
    get marketplace_Market_url
    assert_response :success
  end
end
