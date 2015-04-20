class ReviewsController < ApplicationController
before_action: :signin, only: [:create]

   def index
      @reviews = Review.all
   end

   def new
      @movie = Movie.new(find(params[:movie_id]))
      @review = Review.new
   end

   def create
      @review = Review.new(review_params)
      if @review.save
         redirect_to movies_review_path(@movie)
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
