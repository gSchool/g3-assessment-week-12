class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.text :synopsis
    end

    create_table :reviews do |t|
      t.text :text
      t.integer :movie_id
    end
  end
end
