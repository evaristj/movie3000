class AddGenreToPeliculas < ActiveRecord::Migration[5.1]
  def change
    add_column :peliculas, :genre, :string
  end
end
