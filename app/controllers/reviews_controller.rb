class ReviewsController < ApplicationController

def new
  @review = Review.new
end

def index
  @reviews = Review.all
  @movies = Movie.all
  @movie = Movie.new

end

def create
  @review = Review.new(review_params)
  @review.user_id = current_user.id
  if @review.save
    redirect_to root_path
  else
    render :new
  end
end

def show
@reviews = Review.all
end


private
def review_params
params.require(:review).permit(:title, :body, :user_id, :movie_id)
end

end
