class Movie < ActiveRecord::Base
  validates :name, :year, presence: true
  validate :year_must_be_number

  def year_must_be_number
    unless year.match(/^\d+$/)
      errors.add(:year, "is not a number")
    end
  end

end
