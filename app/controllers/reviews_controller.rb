class ReviewsController < ApplicationController
  before_action :check

  def index
    @reviews = Review.all.sort_by(&:created_at).reverse
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(title: params[:title], body: params[:body])
    @review.user_id = current_user.id
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
    else
      @movie = Movie.find(params[:movie][:id])
    end
    if @movie
      @review.movie_id = @movie.id
    end
    if @review.save
      redirect_to reviews_path, notice: "Review saved"
    else
      render :new, notice: "Incorrect data"
    end
  end

  private

  def check
    if !current_user
      redirect_to root_path, notice: "Must be logged in to access resource"
    end
  end
end
