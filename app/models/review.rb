class Review < ActiveRecord::Base

	belongs_to :user
	belongs_to :movie

	validates :name, presence: true, allow_blank: false
end 

