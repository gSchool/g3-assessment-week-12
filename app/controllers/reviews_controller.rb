class ReviewsController < ApplicationController

  def index
    @reviews = Review.all.order(created_at: :desc)
  end

  def new
    @user = current_user
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path, notice: "The review was created"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :movie_id, :user_id)
  end

end
