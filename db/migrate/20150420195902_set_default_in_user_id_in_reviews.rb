class SetDefaultInUserIdInReviews < ActiveRecord::Migration
  def change
    change_column_default :reviews, :user_id, nil
  end
end
