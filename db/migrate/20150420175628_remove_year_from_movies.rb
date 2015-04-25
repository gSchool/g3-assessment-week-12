class RemoveYearFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :date, :date
  end
end
