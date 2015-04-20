class AddColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :date, :date
    add_column :reviews, :user_id, :integer
  end
end
