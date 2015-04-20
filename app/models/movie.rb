class Movie < ActiveRecord::Base
  validates :name, :year, presence: true
end
