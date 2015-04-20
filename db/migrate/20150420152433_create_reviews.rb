class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.integer :movie_id
      t.belongs_to :movie, index: true


      t.timestamps
    end
  end
end
