class MoviesController < ApplicationController

  def index
    @movies = Movie.all.order(year: :desc)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :year, :synopsis))
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

end
