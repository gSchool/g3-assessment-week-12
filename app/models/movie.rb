class Movie < ActiveRecord::Base

  validates :name, :year, :synopsis, presence: true

  has_many :reviews

end
