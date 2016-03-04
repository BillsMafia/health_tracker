class ExercisesPerformed < ActiveRecord::Base
  belongs_to :exercise_type

  def exercise_name
    exercise_type.name
  end

  def exercise_name=(name)
    et = ExerciseType.find_by_name(name)
    if et
      self.exercise_type = et
    else
      self.exercise_type = ExerciseType.create!(name: name)
    end
  end
end
