class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    if params[:movie_id].present?
      @movie = Movie.find(params[:movie_id])
    else
      @movie = Movie.find_by(params[:movie_id])
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @movie = Movie.find(params[:movie_id])
    @review.movie_id = @movie.id

    if @review.save
      redirect_to reviews_path
    else
      redirect_to new_review_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :movie_id)
  end

end
