class ReviewsController < ApplicationController

	before_action :user_logged_in!


	def index
	@movies = Movie.all
	@reviews = Review.all
	end 
	
	def new
	@movie = Movie.find(params[:movie_id])
	@review = Review.new
	@movies = Movie.all
	end 

	def create
	@movie = Movie.find(params[:movie_id])
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


end 







