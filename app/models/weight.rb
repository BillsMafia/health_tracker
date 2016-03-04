class Weight < ActiveRecord::Base
  validates :weight, presence: {message: 'You must enter a weight'}
  validates :date_weighed, presence: {message: 'You must enter a date for when you were weighed'}
end
