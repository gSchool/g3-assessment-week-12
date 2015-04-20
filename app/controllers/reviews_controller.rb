class ReviewsController < ApplicationController

  before_action :authenticate

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to "/reviews"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end

  def authenticate
    redirect_to '/signin' unless current_user
  end

end
