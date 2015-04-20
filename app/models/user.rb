class User < ActiveRecord::Base
  validates :username, presence: true

  has_many :reviews
  has_many :movies, through: :reviews

  has_secure_password

end
