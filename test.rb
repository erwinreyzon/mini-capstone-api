require "http"

response = HTTP.get("https://localhost:3000/products")

pp response.parse(:json)