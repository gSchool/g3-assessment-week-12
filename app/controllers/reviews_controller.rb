class ReviewsController < ApplicationController
  before_action :set_movie

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.user_id = current_user.id
    @review.movie_id = @movie.id
    if @review.save
      redirect_to movie_review_path(@movie)
    else
      render :new
    end
  end


    private
    def review_params
      params.require(:review).permit(:title, :body, :user_id, :movie_id)
    end

    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
end
