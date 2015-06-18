class ReviewsController < ApplicationController
before_action: :authenticate


   def index
      @reviews = Review.all
   end

   def new
      @review = Review.new
   end

   def create
      @review = Review.new(review_params)
      if @review.save
         redirect_to reviews_path
      else
         render :new
      end
   end



   private
   def set_review
      @review = Review.find(params[:movie_id])
   end

   def review_params
      params.require(:review).permit(:movie, :title, :body, :reviewer, :date)
   end



end
