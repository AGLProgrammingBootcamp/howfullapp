require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get enter_sensor" do
    get :enter_sensor
    assert_response :success
  end

end
