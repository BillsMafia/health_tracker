require 'test_helper'

class ExercisesPerformedControllerTest < ActionController::TestCase
  setup do
    @exercise = exercises_performeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises_performed)
    assert_not_nil assigns(:types)
  end

  test "should get show" do
    get :show, id: @exercise
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end

  test "should get update" do
    patch :update, id: @exercise, exercises_performed: { date_burned: @exercise.date_burned, exercise_type: {name: "RUNNING"}}
    assert_redirected_to exercises_performed_path(assigns(:exercises_performed))
  end

  test "should get create" do
    assert_difference('ExercisesPerformed.count') do
      post :create, exercises_performed: { date_burned: @exercise.date_burned, exercise_type: {name: "RUNNING"}}
    end

    assert_redirected_to exercises_performed_path(assigns(:activity))
  end

  test "should get destroy" do
    get :destroy, id: @exercise
    assert_response :success
  end

end
