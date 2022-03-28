class CartedProductsController < ApplicationController

  def index
    carted_products = current_user.carted_products
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil
    )
    carted_product.save
    render json: carted_product
  end
end
