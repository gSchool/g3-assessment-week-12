class ReviewsController < ApplicationController
  before_action :set_movie, :set_user, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @movie
      @review.movie_id = @movie.id
      @review.save
      redirect_to movies_path, notice: "Review made!"
    elsif @user
      @review.user_id = @user.id
      @review.save
      redirect_to reviews_path, notice: "Review made!"
    end
  end



  private
  def review_params
    params.require(:review).permit(:movie_id, :user_id, :title, :description)
  end

  def set_movie
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
    end
  end

  def set_user
    if params[:user_id]
      @user = User.find(params[:user_id])
    end
  end



end
