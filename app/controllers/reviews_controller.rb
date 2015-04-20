class ReviewsController < ApplicationController

  def index
    @reviews = Review.order(date: :desc).all
  end

  def new
    unless params[:movie_id] == nil
      @movie = Movie.find(params[:movie_id])
    end
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if params[:movie_id] != nil
      @movie = Movie.find(params[:movie_id])
      @review.movie_id = @movie.id
    end
    @review.user_id = current_user.id
    @review.date = DateTime.now
    if @review.save
      redirect_to root_path, notice: "Review was successfully created"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :title, :body)
  end

end
