# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# product = Product.new(name: "playstation", price: 300, image_url: "https://cdn1.dotesports.com/wp-content/uploads/2021/09/30131151/ps5.png", description: "a gaming system made by sony")
# product.save

# product = Product.new(name: "banana", price: 1, image_url: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg", description: "a banana to eat")
# product.save

# Product.create(name: "pants", price: 1, image_url: "https://media.wired.com/photos/611c5312798f0e2c853b702f/125:94/w_1274,h_958,c_limit/Gear-Cargo-Pants-are-Back-1302952122.jpg", description: "pants... for when you need to wear pants")

Supplier.create(name: "Circle Enix", email: "circleenix@example.com", phone_number: "555-1234")
Supplier.create(name: "Skyport", email: "skyport@example.com", phone_number: "555-9876")
Supplier.create(name: "Zone Ama", email: "zoneama@example.com", phone_number: "515-0506")