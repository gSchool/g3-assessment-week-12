class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
  end

  def create
  end

  private
#   def review_params
#     params.require(:review).permit(:creator, :body, :title, movie_id:, user_id:)
#   end
#
end
