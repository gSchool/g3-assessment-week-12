class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of :name, :year
  validates :year, numericality: true
end
