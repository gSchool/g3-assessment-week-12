class ReviewsController < ApplicationController

  before_action :authenticate
  before_action :set_movie, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @movie
      @review.movie_id = @movie.id
    end
    if @review.save
      redirect_to "/reviews"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :title, :body)
  end

  def authenticate
    redirect_to '/signin' unless current_user
  end

  def set_movie
    @movie = nil
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
    end
  end

end
