class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  validates :movie_id, :body, :title, presence: true

end
