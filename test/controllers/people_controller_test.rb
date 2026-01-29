require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get people_view_url
    assert_response :success
  end

  test "should get peopleview" do
    get people_peopleview_url
    assert_response :success
  end
end
