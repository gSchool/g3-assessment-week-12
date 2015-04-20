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
      redirect_to movies_path, notice: "The movie was created"
    else
      render :new, notice: "It didn't work :-("
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end
