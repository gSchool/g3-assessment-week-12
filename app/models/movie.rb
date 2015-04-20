class Movie < ActiveRecord::Base
  validates :name, :year, :synopsis, presence: true

  has_many :reviews
  has_many :users, through: :reviews
end
