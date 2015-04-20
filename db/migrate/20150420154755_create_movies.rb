class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :year
      t.string :name
      t.string :synopsis
    end
  end
end
