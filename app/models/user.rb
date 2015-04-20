class User < ActiveRecord::Base

attr_accessor :username, :password

has_many :reviews

end
