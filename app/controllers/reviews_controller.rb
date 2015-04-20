class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @movie = Movie.find_by(params[:movie_id])
    @review.user_id = current_user.id
    if @review.save
      redirect_to movie_reviews_path(@movie)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:creator, :body, :title, :movie_id, :user_id)
  end

end
