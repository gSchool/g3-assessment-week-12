class ReviewsController < ApplicationController

  def index
    @reviews = Review.order(:created_at)
  end

  def new
    @review = Review.new
    set_hidden_field
  end

  def create
    @movie = Movie.find(review_params[:movie_id])
    @review = @movie.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to reviews_path, notice: 'Review successfully created'
    else
      set_hidden_field
      flash.now[:alert] = 'There was a problem creating the review'
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :movie_id)
  end

  def set_hidden_field
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
      @review.movie = @movie
    else
      @movie = nil
      @review.movie_id = nil
      @movies = Movie.all
    end
  end

end
