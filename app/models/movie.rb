class Movie < ActiveRecord::Base

  has_many :reviews

  validates :name, presence: true
  validates :synopsis, presence: true
  validates :year, presence: true

end
