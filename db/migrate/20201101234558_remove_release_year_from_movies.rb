class RemoveReleaseYearFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :release_year, :integer
  end
end
