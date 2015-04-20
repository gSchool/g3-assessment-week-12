class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.integer :year
      t.string :synopsis
    end
  end
end
