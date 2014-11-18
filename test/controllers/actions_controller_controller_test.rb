require 'test_helper'

class ActionsControllerControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get share" do
    get :share
    assert_response :success
  end

end
