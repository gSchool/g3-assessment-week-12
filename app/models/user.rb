class User < ActiveRecord::Base
  has_many :reviews
  has_many :movies, through: :reviews


  validates :username, :password, presence: true
  validates :username, uniqueness: true

end
