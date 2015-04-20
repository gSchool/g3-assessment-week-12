class ReviewsController < ApplicationController

  def index

  end

  def new
    @review = Review.new
    unless request.fullpath == '/reviews/new'
      @movie = Movie.find(params[:movie_id])
    end
  end

  def create
    @review = Review.new(params.require(:review).permit(:title, :body, :movie_id, :user_id, :created_at))
      @review.user_id = current_user.id
      if @review.movie_id == nil
        @review.movie_id = Movie.find(params[:movie_id]).id
      end
    if @review.save
      redirect_to movies_path
    else
      render :new
    end
  end

end
