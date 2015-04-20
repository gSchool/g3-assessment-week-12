class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order("year DESC")
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie created!"
    else
      render :new
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end
