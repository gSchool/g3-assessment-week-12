class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def newmovie
    @review = Review.new
    @movie = Movie.find_by(params[:id])
  end

  def createmovie
    @movie = Movie.find_by(params[:id])
    @review = @movie.reviews.new(review_params)
      if @review.save
        redirect_to reviews_path
      else
        render :new
      end
  end

private

  def review_params
    params.require(:review).permit(:movie_id, :user_id, :title, :body, :date)
  end

end
