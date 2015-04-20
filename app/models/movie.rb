class Movie < ActiveRecord::Base

  validates :name, :year, presence: true
  validates_numericality_of :year

  has_many :reviews

end
