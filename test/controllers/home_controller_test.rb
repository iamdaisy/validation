require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
