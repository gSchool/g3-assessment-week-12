class Movie < ActiveRecord::Base

   validates :name, :year, :synopsis, presence: true
  belongs_to :user
  has_many :reviews
end
