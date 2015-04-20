class ReviewsController < ApplicationController

  def index
    @movie = Movie.find(params[:id])
    @reviews = Review.new
  end

  def new
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review.movie_id = @movie.id
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
  end
end


  private

    def review_params
      params.require(:review).permit(:title, :body, :date, :movie_id, :user_id)
    end


end
