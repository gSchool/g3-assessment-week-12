class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
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
