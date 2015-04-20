class User < ActiveRecord::Base
  has_many :reviews
  has_many :movies, through: :reviews


  validates :name, :password, presence: true
  validates :name, :password, uniqueness: true

  has_secure_password
end
