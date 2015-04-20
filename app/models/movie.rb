class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :year, :synopsis, presence: true


end
