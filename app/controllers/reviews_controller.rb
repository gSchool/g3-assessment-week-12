class ReviewsController < ApplicationController
  before_action :current_movie

  def index
    @reviews = Review.order("created_at").reverse_order.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @movie = Movie.find_by(params[:movie_id])
    @review.user_id = current_user.id
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:body, :title, :movie_id, :user_id)
  end

end
