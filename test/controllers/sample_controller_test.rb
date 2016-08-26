require 'test_helper'

class SampleControllerTest < ActionController::TestCase
  test "should get scores" do
    get :scores
    assert_response :success
  end

end
