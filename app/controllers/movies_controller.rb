class MoviesController < ApplicationController
  before_action :check

  def index
    @movies = Movie.all.sort_by(&:year).reverse
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  private

  def check
    if !current_user
      redirect_to root_path, notice: "Must be logged in to access resource"
    end
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end
end
