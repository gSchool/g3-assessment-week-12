class Registration < ActiveRecord::Base
   validates :username, :email, presence: true


end
