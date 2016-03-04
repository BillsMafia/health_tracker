class ExerciseType < ActiveRecord::Base
  has_many :exercises_performeds
  validates :name, presence: {message: 'You must enter a name for the exercise'}
end
