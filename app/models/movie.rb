class Movie < ActiveRecord::Base
  validates_presence_of :name, :year
  validates :year, numericality: true
end
