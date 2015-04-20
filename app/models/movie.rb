class Movie < ActiveRecord::Base

  validates :name, presence: true
  validates :year, presence: true

  has_many :reviews

end
