class Movie < ActiveRecord::Base
	
	has_many :reviews
	has_many :users, through: :reviews

	validates :movie_name, presence: true, allow_blank: false
  	validates :year, presence: true, allow_blank: false
  	validates :synopsis, presence: true, allow_blank: false

end 