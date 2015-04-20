class ChangeYearToInteger < ActiveRecord::Migration
  def change
    change_column :movies, :year, :text
  end
end
