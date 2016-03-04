class ExercisesPerformed < ActiveRecord::Base
  belongs_to :exercise_type
  validates :exercise_type, presence: {message: 'You must select an exercise type.'}
  validates :calories_burned, presence: {message: 'You must enter the amount of calories burned'}
  validates :date_burned, presence: {message: 'You must enter a date for when you exercised'}

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
