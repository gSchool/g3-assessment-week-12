class ReviewsController < ApplicationController

  def index
  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end

end
