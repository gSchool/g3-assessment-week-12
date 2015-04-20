class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :movie_id
      t.text :title
      t.text :body
      t.string :reviewer
      t.date :date
    end
  end
end
