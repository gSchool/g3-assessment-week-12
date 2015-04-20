class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :movie
      t.string :title
      t.text :body
    end
  end
end
