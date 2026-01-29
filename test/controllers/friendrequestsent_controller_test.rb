require "test_helper"

class FriendrequestsentControllerTest < ActionDispatch::IntegrationTest
  test "should get friendrequestget" do
    get friendrequestsent_friendrequestget_url
    assert_response :success
  end
end
