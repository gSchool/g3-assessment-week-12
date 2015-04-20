class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :title, :bodwy, presence: true
end
