class Review < ActiveRecord::Base
   belongs_to :reviewer
   belongs_to :movie
   
end
