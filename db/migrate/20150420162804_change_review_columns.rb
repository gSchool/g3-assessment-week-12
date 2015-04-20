class ChangeReviewColumns < ActiveRecord::Migration
  def change
    remove_column :reviews, :text
    add_column :reviews, :title, :string
    add_column :reviews, :body, :text
  end
end
