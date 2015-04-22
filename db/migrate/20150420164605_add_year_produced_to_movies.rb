class AddYearProducedToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :year_produced, :integer
  end
end
