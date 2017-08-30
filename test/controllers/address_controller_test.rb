require 'test_helper'

class AddressControllerTest < ActionController::TestCase
  test "should get determine" do
    get :determine
    assert_response :success
  end

end
