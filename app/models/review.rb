class Review < ActiveRecord::Base
  before_save :init_data
  belongs_to :user
  belongs_to :movie
  # before_validation :set_movie_id, on: :create

  def init_data
    self.date ||= Date.today if new_record?
  end

  # def set_movie_id
  #   self.movie_id ||=
  # end

end
