class ReviewsController < ApplicationController

  def index
    @reviews = Review.all.each.sort {|x, y|  y[:movie_id] <=> x[:movie_id] }
  end

  def new
    @review = Review.new
    if params[:movie_id] != nil
      @movie = Movie.find(params[:movie_id])
    end
  end

  def create
    @review = Review.new(review_params)
    if @review.movie_id == nil
      @movie = Movie.find(params[:movie_id])
      @review.movie_id = @movie.id
    end
    @review.user_id = @current_user.id
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def review_params
    params.require(:review).permit(:title, :body, :user_id, :movie_id)
  end

end
