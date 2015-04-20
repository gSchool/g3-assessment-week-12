class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :name
      t.string :year
      t.string :synopsis
      t.timestamps
    end
  end
end
