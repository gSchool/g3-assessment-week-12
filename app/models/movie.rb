class Movie < ActiveRecord::Base
validates [:name, :synopsis, :year], presence: true
has_many :reviews
end
