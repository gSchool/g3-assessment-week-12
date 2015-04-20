class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.belongs_to :user, index: true
    end
  end
end
