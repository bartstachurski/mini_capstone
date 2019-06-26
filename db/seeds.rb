# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create([
  {name: "Chemex Pourover", price: 50, image_url: "https://www.chemexcoffeemaker.com/media/catalog/product/cache/1/image/485x684/9df78eab33525d08d6e5fb8d27136e95/c/o/coffeemaker-classic-six-detail_6.png", description: "Chemex pourover provides super clean flavors"},
  {name: "Chemex Filters", price: 10, image_url: "https://www.chemexcoffeemaker.com/media/catalog/product/cache/1/image/485x684/9df78eab33525d08d6e5fb8d27136e95/f/i/filters-prefold-circles-detail.png", description: "Chemex filters for the Chemex pourover"},
])