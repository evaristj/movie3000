class CreateTopmovies < ActiveRecord::Migration[5.1]
  def change
    create_table :topmovies do |t|
      t.string :name
      t.integer :stars
      t.integer :ranking
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end
