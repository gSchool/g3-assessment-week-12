class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order(:created_at).reverse_order
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    unless params[:movie_id].blank?
      @review.movie_id = [params[:movie_id]]
    end
    if
      @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :user_id, :movie_id)
  end

end
