require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get lists" do
    get :lists
    assert_response :success
  end

end
