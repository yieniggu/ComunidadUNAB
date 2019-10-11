class Comment < ApplicationRecord
  belongs_to :course
  belongs_to :user

  validates :course_id , presence: true, numericality: {only_integer: true}
  validates :user_id , presence: true, numericality: {only_integer: true}
  validates :body, presence:true, length: {in: 10..200}
end
