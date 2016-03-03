require 'test_helper'

class StepsTakensControllerTest < ActionController::TestCase
  setup do
    @steps_taken = steps_takens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steps_takens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steps_taken" do
    assert_difference('StepsTaken.count') do
      post :create, steps_taken: { steps: @steps_taken.steps }
    end

    assert_redirected_to steps_taken_path(assigns(:steps_taken))
  end

  test "should show steps_taken" do
    get :show, id: @steps_taken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steps_taken
    assert_response :success
  end

  test "should update steps_taken" do
    patch :update, id: @steps_taken, steps_taken: { steps: @steps_taken.steps }
    assert_redirected_to steps_taken_path(assigns(:steps_taken))
  end

  test "should destroy steps_taken" do
    assert_difference('StepsTaken.count', -1) do
      delete :destroy, id: @steps_taken
    end

    assert_redirected_to steps_takens_path
  end
end
