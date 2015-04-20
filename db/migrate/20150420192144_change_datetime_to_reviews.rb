class ChangeDatetimeToReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :created_at, :date
  end
end
