class Movie < ActiveRecord::Base
  validates :year, numericality: true
  validates :name, :synopsis, :year, presence: true
  has_many :reviews
end
