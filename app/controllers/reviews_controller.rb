class ReviewsController < ApplicationController

def new
  @review = Review.new
end

def index
  @reviews = Review.all

end

def create
  @movie = Movie.find(params[:movie_id])
  @review = Review.new(review_params)
  @review.movie_id = @movie.id
  @review.user_id = current_user
  if @review.save
    redirect_to root_path
  else
    render :new
  end
end

private
def review_params
params.require(:review).permit(:title, :body, :user_id, :movie_id)
end

end
