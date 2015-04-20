class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of :year
  validates_presence_of :title
  validates_format_of :year, :with => /\d{4}/


end
