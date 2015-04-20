class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc)

  end

  def new
    @review = Review.new

  end

  def create
   @review = Review.new(review_params)
   if @review.save
     redirect_to '/'
   else
     render 'new'
   end
  end

  def review_params
    params.require(:review).permit(:name, :year, :synopsis, :id, :movie_id, :user_id)
  end


end
