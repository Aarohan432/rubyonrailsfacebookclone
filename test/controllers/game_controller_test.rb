require "test_helper"

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get gameview" do
    get game_gameview_url
    assert_response :success
  end
end
