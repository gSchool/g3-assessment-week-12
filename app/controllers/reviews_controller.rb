class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @user = current_user
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @movie = Movie.find_by(params[:movie_id])
    @review.movie_id = @movie.id
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :movie_id)
  end

end
