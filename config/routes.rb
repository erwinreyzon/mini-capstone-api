Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# get "/products", controller: "products", action: "products_method"
# same as above
get "/products" => "products#index"

post "/products" => "products#create"

patch "/products/:id" => "products#update"

# get "/ps5", controller: "products", action: "ps5"

# get "/banana", controller: "products", action: "banana"

# get "/pants", controller: "products", action: "pants"

# get "/search" => "products#search_products"

get "/products/:id" => "products#show"

# post "/body_params" => "products#body_params"

end
