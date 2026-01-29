require "test_helper"

class LikeControllerTest < ActionDispatch::IntegrationTest
  test "should get Like" do
    get like_Like_url
    assert_response :success
  end
end
