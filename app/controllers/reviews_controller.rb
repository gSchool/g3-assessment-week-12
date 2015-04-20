class ReviewsController < ApplicationController
	
	def new
		@review = Review.new
	end 

	def create
  	@review = Review.new(review_params)
  	@review.user_id = @user.id
    @review.user_id = current_user.id
  	# this connects the patient to the prescription just like in rails c
  	 if @review.save
        redirect_to movies_path, notice: "Your review has been created"    
     else
      render :new      
     end
  end

  private
  def review_params
  	params.require(:review).permit(:title, :body, :date, :user_id, :movie_id)
  end 

end 


