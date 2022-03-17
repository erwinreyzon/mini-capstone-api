class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all
    render json: suppliers.as_json
  end

  def show
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    render json: supplier.as_json
  end

  # def create
  #   Supplier.create(
  #     name
  #     email
  #     phone_number
  #   )
  # end

end
