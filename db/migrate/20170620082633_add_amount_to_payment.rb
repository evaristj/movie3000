class AddAmountToPayment < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :amount, :bigint
  end
end
