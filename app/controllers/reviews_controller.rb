class ReviewsController < ApplicationController

  def index
    @review = Review.all.sort_by(&:created_at)
  end

  def new
    @review = Review.new
  end

  def create

  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end
end
