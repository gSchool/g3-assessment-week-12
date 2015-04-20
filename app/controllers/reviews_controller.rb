class ReviewsController < ApplicationController
  before_action :set_movie

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
    end
  end


    private
    def review_params
      params.require(:reviews).permit(:title, :body, :user_id, :movie_id)
    end

    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
end
