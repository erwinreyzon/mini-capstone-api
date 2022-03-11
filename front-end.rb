require "http"
require "/app/controllers/products.controller.rb"

response = HTTP.get("http://localhost:3000/products")

# pp response.parse(:json)

# Create (not working)

puts "Please input product name:"
name = gets.chomp 
puts "Please input product price:"
price = gets.chomp
price = price.to_i
puts "Please input product image URL:"
image_url = gets.chomp
puts "Please input product description:"
description = gets.chomp

{
  "name": name,
  "price": price,
  "image_url": image_url,
  "description": description
}