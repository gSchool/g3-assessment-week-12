class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @user = current_user
    @review = Review.new
  end

  def create
    @user = current_user
    @review = @user.reviews.new(review_params)
    if @review.save
      if @review.movie_id == nil
        @movie = Movie.find(params[:movie_id])
        @review.movie_id = @movie.id
        @review.save
      end
      redirect_to movies_path, notice: "Your review has been created."
    else
      render :new
    end
  end


  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @user = current_user
    @review = Review.find(params[:id])
    if @review.save
      redirect_to movie_path(@movie), notice: "Your review has been updated."
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :user_id, :title,
    :body)
  end

end
