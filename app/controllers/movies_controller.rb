class MoviesController < ApplicationController

  def index
    @movies = Movie.order(year: :desc).all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie was successfully created"
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end
