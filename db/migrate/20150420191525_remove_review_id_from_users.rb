class RemoveReviewIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :review_id, :integer
  end
end
