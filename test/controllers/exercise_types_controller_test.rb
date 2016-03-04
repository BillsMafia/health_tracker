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
  #
  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end
  #
  # test "should get update" do
  #   patch :update
  #   assert_response :success
  # end
  #
  # test "should get create" do
  #   post :create
  #   assert_response :success
  # end
  #
  # test "should get destroy" do
  #   delete :destroy
  #   assert_response :success
  # end

end
