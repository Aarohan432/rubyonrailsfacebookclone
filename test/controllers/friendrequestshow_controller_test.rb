require "test_helper"

class FriendrequestshowControllerTest < ActionDispatch::IntegrationTest
  test "should get friendrequestview" do
    get friendrequestshow_friendrequestview_url
    assert_response :success
  end
end
