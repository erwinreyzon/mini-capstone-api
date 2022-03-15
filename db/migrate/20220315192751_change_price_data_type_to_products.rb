class ChangePriceDataTypeToProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, scale: 2, precision: 10
  end
end
