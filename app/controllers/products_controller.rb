class ProductsController < ApplicationController

  def index

    products = Product.all
    @products = products
    render template: "products/index"
  end

  # def ps5

  #   ps5 = Product.first
  #   render json: ps5.as_json
    
  # end

  # def banana

  #   banana = Product.second
  #   render json: banana.as_json
    
  # end

  # def pants
    
  #   pants = Product.third
  #   render json: pants.as_json

  # end

  # def search_products
  #   product = params[:input]
  #   display = Product.find_by(name: product)
  #   render json: display.as_json
  # end

  def show
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    @product = product
    render template: "products/show"
  end

  #not working, fix
  # def body_params
  #   input_value = params[:secret_info]
  #   render json: {message: }
  # end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      supplier_id: params["supplier_id"]
    )
    @product = product
    if product.save
      render template: "products/show"
    else
      render json: {errors: product.errors.full_messages}, status: 422
    end
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    @product = product
    product.supplier_id = params["supplier_id"] || product.supplier_id
    if product.save
      render template: "products/show"
    else
      render json: {errors: product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Prodcut deleted"}
  end

end