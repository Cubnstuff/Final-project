require 'test_helper'

class EpicenterControllerTest < ActionController::TestCase
  test "should get feed" do
    get :feed
    assert_response :success
  end

  test "should get trending" do
    get :trending
    assert_response :success
  end

  test "should get show_user" do
    get :show_user
    assert_response :success
  end

  test "should get now_following" do
    get :now_following
    assert_response :success
  end

  test "should get unfollow" do
    get :unfollow
    assert_response :success
  end

end
