class AddIndexToComentarios < ActiveRecord::Migration[5.1]
  def change
    #add_column :comentarios, :pelicula_id, :integer
    add_index :comentarios, :pelicula_id
  end
end
