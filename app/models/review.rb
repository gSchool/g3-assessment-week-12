class Review < ActiveRecord::Base

  belongs_to :movie
  belongs_to :user

  validate :movie_id, :title, :body, presence: true

end
