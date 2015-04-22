class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:year_produced)
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    unless @movie.nil?
      redirect_to new_movie_review_path(@movie)
    end
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

    def movie_params
      params.require(:movie).permit(:title, :description, :year_produced)
    end
end
