class ReviewsController < ApplicationController::Base

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
   @review = Review.new(movie_params)

   if @review.save
     redirect_to '/'
   else
     render 'new'
   end
  end


end
