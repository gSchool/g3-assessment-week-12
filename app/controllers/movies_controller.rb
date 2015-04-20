class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if
      @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end
end
