class Movie < ActiveRecord::Base
  has_many :movie_reviews
  has_many :reviews, through: :movie_reviews

  validates_presence_of :name, :year, :synopsis
  validate :is_year_a_number

  def is_year_a_number
    if year == 0
      errors.add(:end_date, "year is not a number")
    end
  end
end
