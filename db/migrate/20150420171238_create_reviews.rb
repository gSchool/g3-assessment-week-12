class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.date :date
      t.integer :user_id
      t.integer :movie_id
    end
  end
end
