class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :movie

  validates :title, :body, :movie_id, presence: true

end
