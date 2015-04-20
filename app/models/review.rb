class Review < ActiveRecord::Base
  validates_presence_of :title, :body, :movie_id
  belongs_to :movie
  belongs_to :user
end
