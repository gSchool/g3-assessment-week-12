class AddMovieReview < ActiveRecord::Migration
  def change
    create_table :movie_reviews do |t|
      t.string :title
      t.string :body
    end
  end
end
