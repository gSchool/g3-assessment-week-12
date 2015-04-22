class AddDefault < ActiveRecord::Migration
  def change
    change_column :reviews, :movie_id, :integer, :default => 1
  end
end
