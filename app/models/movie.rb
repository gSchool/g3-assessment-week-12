class Movie < ActiveRecord::Base

  has_many :reviews

  validates :name, :year, :synopsis, presence: true
  validate :year_is_number

  def year_is_number
    unless year.is_a Integer
      errors.add(:year, "must be a number")
    end
  end

end
