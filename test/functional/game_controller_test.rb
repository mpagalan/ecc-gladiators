require 'test_helper'

class GameControllerTest < ActionController::TestCase
  test "should get fight" do
    get :fight
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
