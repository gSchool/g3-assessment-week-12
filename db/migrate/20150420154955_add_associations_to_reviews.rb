class AddAssociationsToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :movie, index: true
    add_reference :reviews, :user, index: true
  end
end
