class Review < ActiveRecord::Base

  belongs_to :movie

  validate :movie_id, :title, :body, presence: true

end
