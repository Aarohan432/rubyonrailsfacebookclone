require "test_helper"

class FriendshowControllerTest < ActionDispatch::IntegrationTest
  test "should get friendshowview" do
    get friendshow_friendshowview_url
    assert_response :success
  end
end
