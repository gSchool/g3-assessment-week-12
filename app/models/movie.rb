class Movie < ActiveRecord::Base
  validates :name, :year, :synopsis, presence: true
end
