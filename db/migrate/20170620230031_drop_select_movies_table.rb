class DropSelectMoviesTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :select_movies
  end
end
