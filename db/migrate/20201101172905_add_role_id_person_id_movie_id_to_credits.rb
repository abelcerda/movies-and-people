class AddRoleIdPersonIdMovieIdToCredits < ActiveRecord::Migration[6.0]
  def change
    add_column :credits, :role_id, :integer
    add_column :credits, :person_id, :integer
    add_column :credits, :movie_id, :integer

    add_foreign_key :credits, :roles
    add_foreign_key :credits, :people
    add_foreign_key :credits, :movies
  end
end
