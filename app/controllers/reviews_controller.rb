class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to movie_path(@review.movie), notice: 'Review created.'
    else
      render :new
    end
  end

  def new_movie_review
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create_new_movie_review
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie_id = @movie.id
    @review.user_id = current_user.id
    if @review.save
      redirect_to movie_path(@movie), notice: 'Review created.'
    else
      render :new_movie_review
    end
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :user_id, :title, :body)
  end

end
