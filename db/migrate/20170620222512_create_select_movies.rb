class CreateSelectMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :select_movies do |t|

      t.timestamps
    end
  end
end
