class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: 'Movie created.'
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :date)
  end
end
