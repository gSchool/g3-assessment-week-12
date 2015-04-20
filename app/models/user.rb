class User < ActiveRecord::Base
   validates :username, :email, presence: true

   has_many :reviews
end
