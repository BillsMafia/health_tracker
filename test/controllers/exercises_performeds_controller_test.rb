require 'test_helper'

class ExercisesPerformedsControllerTest < ActionController::TestCase
  setup do
    @exercise = exercises_performeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises_performeds)
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
    patch :update, id: @exercise, exercises_performed: { calories_burned: @exercise.calories_burned, date_burned: @exercise.date_burned, exercise_name: @exercise.exercise_name}
    assert_redirected_to exercises_performed_path(assigns(:exercises_performed))
  end

  test "should get create" do
    assert_difference('ExercisesPerformed.count') do
      post :create, exercises_performed: { calories_burned: @exercise.calories_burned, date_burned: @exercise.date_burned, exercise_name: @exercise.exercise_name}
    end

    assert_redirected_to exercises_performed_path(assigns(:exercises_performed))
  end

  test "should get destroy" do
    assert_difference('ExercisesPerformed.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to exercises_performed_path
  end

end
