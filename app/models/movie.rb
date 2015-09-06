class Movie < ActiveRecord::Base

has_many :reviews

validates :title, presence: true
validates :year, presence: true
validates :body, presence: true

end
