class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    if params[:movie_id]
    @movie = Movie.find(params[:movie_id])
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if params[:movie_id]
    @movie = Movie.find(params[:movie_id])
    @review.movie_id = @movie.id
    end
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :user_id, :movie_id, :created_at)
  end

end
