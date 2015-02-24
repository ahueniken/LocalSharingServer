require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Downloads" do
    get :Downloads
    assert_response :success
  end

end
