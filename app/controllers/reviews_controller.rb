class ReviewsController < ApplicationController
   def index
      @reviews = Review.all
   end

   def new
      @review = Review.new
   end

   def create
      @review = Review.new(params[:id])
      if @review.save
         redirect_to movies_path
      else
         render :new
      end
   end

   private
   def review_params
      params.require(:review).permit(:movie, :title, :body, :reviewer, :date)
   end

   def set_review
      @review = Review.find(params[:id])
   end

end
