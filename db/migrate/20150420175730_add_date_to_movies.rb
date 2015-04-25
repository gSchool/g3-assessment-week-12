class AddDateToMovies < ActiveRecord::Migration
  def change
     add_column :movies, :year, :date
  end
end
