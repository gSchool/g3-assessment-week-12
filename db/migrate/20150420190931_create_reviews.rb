class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.timestamps null: false
      t.belongs_to :movie, index: true
    end
  end
end
