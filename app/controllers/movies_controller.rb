class MoviesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :synopsis)
  end



end
