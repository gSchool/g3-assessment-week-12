class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  validates :year, format: {with: /\A\d{4}$\z/, message: " is not a number"}, presence: true
  validates :title, :description, presence: true
end
