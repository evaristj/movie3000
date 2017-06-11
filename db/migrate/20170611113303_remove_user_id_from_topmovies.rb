class RemoveUserIdFromTopmovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :topmovies, :user_id, :integer
  end
end
