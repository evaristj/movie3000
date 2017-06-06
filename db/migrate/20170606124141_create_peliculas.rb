class CreatePeliculas < ActiveRecord::Migration[5.1]
  def change
    create_table :peliculas do |t|
      t.string :name
      t.integer :stars
      t.string :main_actor
      t.integer :year
      t.string :description
      t.string :casting

      t.timestamps
    end
  end
end
