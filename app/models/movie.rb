class Movie < ActiveRecord::Base

  validates :title, presence: true
  validates :year, presence: true, numericality: true

  has_many :reviews
end
