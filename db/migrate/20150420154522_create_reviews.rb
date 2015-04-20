class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.belongs_to :movies, index: true
      t.timestamps
    end
  end
end
