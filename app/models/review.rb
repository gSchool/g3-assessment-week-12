class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :movie

  validates :title, :body, presence: true

end
