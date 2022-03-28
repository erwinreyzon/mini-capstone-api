class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # orders = Order.all
    orders = current_user.orders
    render json: orders.as_json
  end

  def show
    # order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    carted_products = current_user.carted_products
    # calculated_subtotal = product.price * params[:quantity]
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(
    user_id: current_user.id,
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )
    order.save
    render json: order.as_json
  end

end
