class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:year).reverse_order
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
      flash.now[:alert] = @movie.errors.full_messages.join("<br>")
      render :new
    end
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end
end
