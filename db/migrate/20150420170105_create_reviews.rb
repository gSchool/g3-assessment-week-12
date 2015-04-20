class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.belongs_to :movie, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
