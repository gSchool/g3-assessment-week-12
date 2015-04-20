class Movie < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }

end
