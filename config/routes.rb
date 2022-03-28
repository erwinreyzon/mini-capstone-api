Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# get "/products", controller: "products", action: "products_method"
# same as above
get "/products" => "products#index"
get "/products/:id" => "products#show"
post "/products" => "products#create"
patch "/products/:id" => "products#update"
delete "/products/:id" => "products#destroy"

# get "/ps5", controller: "products", action: "ps5"

# get "/banana", controller: "products", action: "banana"

# get "/pants", controller: "products", action: "pants"

# get "/search" => "products#search_products"

# post "/body_params" => "products#body_params"

get "suppliers" => "suppliers#index"
get "suppliers/:id" => "suppliers#show"
post "suppliers" => "suppliers#create"

post "/users" => "users#create" #creates a login
post "/sessions" => "sessions#create" #creates a logiin session

get "orders" => "orders#index"
get "orders/:id" => "orders#show"
post "orders" => "orders#create"

get "/carted_products" => "carted_products#index"
post "/carted_products" => "carted_products#create"
delete "/carted_products/:id" => "carted_products#destroy"

end
