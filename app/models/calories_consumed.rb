class CaloriesConsumed < ActiveRecord::Base
  validates :calories_consumed, presence: {message: 'You must enter the number of calories consumed.'}
  validates :date_consumed, presence: {message: 'You must enter a date for when the calories were consumed.'}
end
