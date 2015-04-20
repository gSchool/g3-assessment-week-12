class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    unless @movie == nil
      @movie = Movie.find(params[:movie_id])
    end
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie_id = @movie.id
    @review.user_id = current_user.id
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
