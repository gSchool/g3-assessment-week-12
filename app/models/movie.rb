class Movie < ActiveRecord::Base
  validates :name, :year, presence: true
  has_many :reviews
end
