class AddPrecioToPeliculas < ActiveRecord::Migration[5.1]
  def change
    add_column :peliculas, :precio, :integer
  end
end
