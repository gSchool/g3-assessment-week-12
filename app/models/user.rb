class User < ActiveRecord::Base
  has_secure_password
  has_many :movie_reviews
end
