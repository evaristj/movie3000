class RemovePeliculaIdFromComentarios < ActiveRecord::Migration[5.1]
  def change
    remove_column :comentarios, :pelicula_id, :integer
  end
end
