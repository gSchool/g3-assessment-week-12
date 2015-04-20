class Movie < ActiveRecord::Base

  has_many  :reviews
  has_many  :users, through: :reviews

  validate :title, :about,  presence:true
  validate :year, numericality: { only_integer: true}, presence: true
end
