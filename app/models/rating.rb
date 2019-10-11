class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :value, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 7}
  validates :comment, length: {in: 2..30}
  validates :user_id, presence: true, numericality: {only_integer: true}
  validates :course_id, presence: true, numericality: {only_integer: true}
  

end
