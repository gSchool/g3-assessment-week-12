class Movie < ActiveRecord::Base
  has_many :movie_reviews
  has_many :reviews, through: :movie_reviews
end
