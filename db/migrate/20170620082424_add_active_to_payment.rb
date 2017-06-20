class AddActiveToPayment < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :active, :boolean
  end
end
