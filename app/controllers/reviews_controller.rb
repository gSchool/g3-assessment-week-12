class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order(:created_at).reverse
  end

  def new
    if params[:movie_id].present?
      @movie = Movie.find(params[:movie_id])
    end
    @review = Review.new
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    # binding.pry
    @review.user_id = @user.id
    # @review.movie_id = @movie.id
    if params[:movie_id].present?
      @movie = Movie.find(params[:movie_id])
      # @review.movie_id = @movie.id
      # @movie.id = @review.movie_id
    end
    if @movie.present?

      @review.movie_id = @movie.id
    end

    if @review.save
      redirect_to movies_path
    else
      render :new
    end
  end

    private

    def review_params
      params.require(:review).permit(:title, :body, :created_at, :movie_id, :user_id)
    end
end
