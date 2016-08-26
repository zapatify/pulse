require 'test_helper'

class SetupControllerTest < ActionController::TestCase
  test "should get teams" do
    get :teams
    assert_response :success
  end

  test "should get divisions" do
    get :divisions
    assert_response :success
  end

  test "should get athletes" do
    get :athletes
    assert_response :success
  end

end
