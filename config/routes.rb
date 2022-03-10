Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# get "/products", controller: "products", action: "products_method"
# same as above
get "/products" => "products#products_method"

get "/ps5", controller: "products", action: "ps5"

get "/banana", controller: "products", action: "banana"

get "/pants", controller: "products", action: "pants"

get "/search" => "products#search_products"

get "/find/:find" => "products#find_products"

end
