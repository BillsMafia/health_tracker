class ExerciseType < ActiveRecord::Base
  has_many :exercises_performeds
end
