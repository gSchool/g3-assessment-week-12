class Movie < ActiveRecord::Base

  validates :name, presence: true
  validates :year, presence: true
  validates :year, numericality: { only_integer: true }

  has_many :reviews

end
