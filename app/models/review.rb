class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  before_save :set_creation_date

  def set_creation_date
    self.created_at ||= Date.today
  end

  def get_movie(review)
    Movie.find(review).name
  end

  def get_user(review)
    User.find(review).name
  end
end
