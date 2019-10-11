class UserCourse < ApplicationRecord
    belongs_to :user
    belongs_to :course

    validates :course_id , presence: true, numericality: {only_integer: true}
    validates :user_id , presence: true, numericality: {only_integer: true}
end