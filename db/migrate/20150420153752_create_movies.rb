class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.date :year
      t.string :synopsis

      t.timestamps
    end
  end
end
