class Movie < ActiveRecord::Base

  has_many :reviews
  validates :name, :year, presence: :true
  validates :year, numericality: true
end
