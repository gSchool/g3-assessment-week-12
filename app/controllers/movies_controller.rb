class MoviesController < ApplicationController

  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: "Your movie has been created."
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.save
      redirect_to movie_path(@movie), notice: "Your movie has been created."
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year,
    :synopsis, :name)
  end

end

