class RemoveDateFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :date, :date
  end
end
