class ReviewsController < ApplicationController

	before_action :set_movie
	
	def new
	@review = Review.new
	@movies = Movie.all
	end 

	def create
  	@review = Review.new(review_params)
    @review.user_id = current_user.id
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

  def set_movie
  	@movie = Movie.find(params[:movie_id])
  end 

end 







