class AddUserIdToOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :product_id, :user_id
  end
end
