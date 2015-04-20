class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :title, :body, presence: true
end
