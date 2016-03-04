class StepsTaken < ActiveRecord::Base
  validates :steps_taken, presence: {message: 'You must enter the number of steps taken'}
  validates :date_walked, presence: {message: 'You msut enter a date for when you walked'}
end
