class Movie < ActiveRecord::Base

  validates_presence_of :name, :year

  validates :year, numericality: false

  has_many :reviews
  has_many :users, through: :reviews

  # default_scope { where(year: '2000') }

end
