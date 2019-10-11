class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :ratings

  def mean_of_ratings
    acum = 0
    self.ratings.each do |rating|
        acum += rating.value
    end

    return acum/ratings.size.to_f
  end
end
