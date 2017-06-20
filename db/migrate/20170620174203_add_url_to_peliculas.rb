class AddUrlToPeliculas < ActiveRecord::Migration[5.1]
  def change
    add_column :peliculas, :url, :text
  end
end
