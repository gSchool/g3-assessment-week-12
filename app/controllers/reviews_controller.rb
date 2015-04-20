class ReviewsController < ApplicationController

  def index
    @reviews = Review.all.sort_by(&:created_at)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(title: params[:title], body: params[:body])
    @movie = Movie.find_by(id: params[:movie][:id])
    if @movie
      @review.movie_id = @movie.id
    end
    if @review.save
      redirect_to reviews_path, notice: "Review saved"
    else
      render :new, notice: "Incorrect data"
    end
  end
end
