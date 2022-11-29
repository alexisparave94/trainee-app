class RemoveForeignKeyCustomerIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_reference :orders, :customer, foreign_key: true, index: false
  end
end
