class Movie < ActiveRecord::Base

  has_many  :reviews
  has_many  :users, through: :reviews

  validates :title, :about,  presence:true
  validates :year, numericality: { only_integer: true}, presence: true
end
