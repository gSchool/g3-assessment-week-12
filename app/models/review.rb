class Review < ActiveRecord::Base

  belongs_to :movie

  validate :text

end
