class MoviesController < ApplicationController
   def index
      @movies = Movie.all
   end

   def new
      @movie = Movie.new(params[:id])
   end

   def create
      @movie = Movie.new(params[:id])
      if @movie.save
         redirect_to movies_path
      else
         render :new
      end
   end

   def show
      @movie = Movie.find(params[:id])
   end




   private

   def set_movie
      @movie = Movie.find(params[:id])
   end

   def movie_params
      params.require(:movie).permit(:name, :year, :synopsis)
   end


end
