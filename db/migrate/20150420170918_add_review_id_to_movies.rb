class AddReviewIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :review_id, :integer
  end
end
