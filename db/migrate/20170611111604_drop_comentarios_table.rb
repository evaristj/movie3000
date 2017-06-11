class DropComentariosTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :comentarios
  end
end
