require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get sensor" do
    get :sensor
    assert_response :success
  end

end
