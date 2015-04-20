class Registration < ActiveRecord::Base
   validates :username, :password, presence: true


end
