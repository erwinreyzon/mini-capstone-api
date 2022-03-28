class CartedProductsController < ApplicationController

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted"
    )
    carted_product.save
    render json: carted_product
  end

  def destroy
    carted_product = current_user.carted_products.find(params: [:id], status: "carted")
    carted_product.status =  "removed"
    carted_product.save
    render json: {status: "Carted product successfully removed."}
  end
end
