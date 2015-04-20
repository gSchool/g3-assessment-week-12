class WelcomeController < ApplicationController

  def index
    @movies = Movie.order(year: :desc).all
  end

end
