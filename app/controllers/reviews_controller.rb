class ReviewsController < ApplicationController

  def index

  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params.require(:review).permit(:title, :body, :movie_id, :user_id, :created_at))
    @review.user_id = current_user.id
    if @review.save
      redirect_to movies_path
    else
      render :new
    end
  end

end
