require 'test_helper'

class ScoresControllerTest < ActionController::TestCase
  setup do
    @score = scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score" do
    assert_difference('Score.count') do
      post :create, score: { division_id: @score.division_id, overall_place: @score.overall_place, overall_score: @score.overall_score, team_id: @score.team_id, wod1_place: @score.wod1_place, wod1_score: @score.wod1_score, wod2_place: @score.wod2_place, wod2_score: @score.wod2_score, wod3_place: @score.wod3_place, wod3_score: @score.wod3_score, wod4_place: @score.wod4_place, wod4_score: @score.wod4_score, wod5_place: @score.wod5_place, wod5_score: @score.wod5_score }
    end

    assert_redirected_to score_path(assigns(:score))
  end

  test "should show score" do
    get :show, id: @score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score
    assert_response :success
  end

  test "should update score" do
    patch :update, id: @score, score: { division_id: @score.division_id, overall_place: @score.overall_place, overall_score: @score.overall_score, team_id: @score.team_id, wod1_place: @score.wod1_place, wod1_score: @score.wod1_score, wod2_place: @score.wod2_place, wod2_score: @score.wod2_score, wod3_place: @score.wod3_place, wod3_score: @score.wod3_score, wod4_place: @score.wod4_place, wod4_score: @score.wod4_score, wod5_place: @score.wod5_place, wod5_score: @score.wod5_score }
    assert_redirected_to score_path(assigns(:score))
  end

  test "should destroy score" do
    assert_difference('Score.count', -1) do
      delete :destroy, id: @score
    end

    assert_redirected_to scores_path
  end
end
