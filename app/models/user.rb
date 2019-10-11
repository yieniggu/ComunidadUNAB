class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :ratings
    has_many :user_courses
    has_many :courses , through: :user_courses


    def mean_of_ratings(course)
        ratings = self.ratings.select {|rating| rating.course_id == course.id}
        acum = 0
        ratings.each do |rating|
            print(rating)
            print(rating.value)
            acum += rating.value
        end

        print(acum)
        return acum/ratings.size.to_f
    end
end
