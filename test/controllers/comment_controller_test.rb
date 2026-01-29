require "test_helper"

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get commentview" do
    get comment_commentview_url
    assert_response :success
  end
end
