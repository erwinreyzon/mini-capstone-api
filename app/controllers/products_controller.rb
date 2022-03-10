class ProductsController < ApplicationController

  def products_method

    products = Product.all
    render json: products.as_json

  end

  def ps5

    ps5 = Product.first
    render json: ps5.as_json
    
  end

  def banana

    banana = Product.second
    render json: banana.as_json
    
  end

  def pants
    
    pants = Product.third
    render json: pants.as_json

  end

  def search_products
    product = params[:input]
    display = Product.find_by(name: product)
    render json: display.as_json
  end

  def find_products
    product = params[:find]
    display = Product.find_by(name: product)
  end


end
