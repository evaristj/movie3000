class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :comment
      t.string :name
      t.integer :pelicula_id

      t.timestamps
    end
  end
end
