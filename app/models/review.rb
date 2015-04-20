class Review < ActiveRecord::Base
  validates :title, :body, :user_id, :movie_id, presence: true
  belongs_to :movie
  belongs_to :user
end
