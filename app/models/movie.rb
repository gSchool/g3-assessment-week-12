class Movie < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :title
  validates_presence_of :year_produced
  validates :year_produced, numericality: true
end
