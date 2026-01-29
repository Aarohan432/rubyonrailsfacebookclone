require "test_helper"

class VideopageControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get videopage_view_url
    assert_response :success
  end

  test "should get video" do
    get videopage_video_url
    assert_response :success
  end
end
