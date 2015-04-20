class RemoveReviewIdFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :review_id, :integer
  end
end
