class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.sort_by {|review| review.created_at}.reverse
  end

  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])
  end

  def new_from_home
    @review = Review.new
  end

  # def create_from_home
  #   @review = Review.new(review_params)
  #   #@movie = Movie.find(params[:movie_id])
  #   @review.user_id = current_user.id
  #   if @review.save
  #     redirect_to reviews_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    unless params[:movie_id] == nil
    @review.movie_id = params[:movie_id]
    end
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :movie_id, :user_id)
  end
end
