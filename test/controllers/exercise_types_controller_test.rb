require 'test_helper'

class ExerciseTypesControllerTest < ActionController::TestCase
  setup do
    @type = exercise_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_types)
  end

  test "should get show" do
    get :show, id: @type
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type
    assert_response :success
  end

  test "should get update" do
    patch :update, id: @type, exercise_type: { name: @type.name }
    assert_redirected_to exercise_type_path(assigns(:exercise_type))
  end

  test "should get create" do
    assert_difference('ExerciseType.count') do
      post :create, exercise_type: { name: @type.name }
    end

    assert_redirected_to exercise_type_path(assigns(:exercise_type))
  end

  test "should get destroy" do
    assert_difference('ExerciseType.count', -1) do
      delete :destroy, id: @type
    end

    assert_redirected_to exercise_type_path
  end

end
