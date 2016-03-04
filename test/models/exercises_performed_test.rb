require 'test_helper'

class ExercisesPerformedTest < ActiveSupport::TestCase
  test "get exercise type name" do
    ep = ExercisesPerformed.create(calories_burned: 100.00, date_burned: "2016-03-03")
    et = exercise_types(:one)
    et.exercises_performeds << ep
    assert_equal "RUNNING", ep.exercise_name
  end
end
