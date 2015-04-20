class ChangeMovieReviewTable < ActiveRecord::Migration
  def change
    rename_table :movie_reviews, :reviews
  end
end
