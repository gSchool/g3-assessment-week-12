class CreateMovieReviews < ActiveRecord::Migration
  def change
    create_table :movie_reviews do |t|
      t.belongs_to :review, index: true
      t.belongs_to :movie, index: true
      t.belongs_to :user, index: true
    end
  end
end
