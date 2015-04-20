class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_movie

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    unless params[:movie_id].nil?
      @review.movie_id = params[:movie_id]
    end

    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

private

  def set_movie
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
    end
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :body, :movie_id, :user_id)
  end
end
