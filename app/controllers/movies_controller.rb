class MoviesController < ApplicationController
  def index
  end

  def new
     @movie = Movie.new(params[:id])
  end

  def create
     @movie = Movie.create(movie_params)
     
  end


private
def movie_params
   params.require(:movie).permit(:name, :year, :synopsis)
end
