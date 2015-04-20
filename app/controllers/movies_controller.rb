class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path, notice: "Movie saved"
    end
  end

  def show
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end
