# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories = Category.create([{ name: 'Computers'}, { name: 'Televisions'}, { name: 'Smart Phones'}, 
#                               { name: 'Stereos'},{ name: 'Speakers'},{ name: 'Others'}  ])

products = Product.create([{name: "MacBook Pro", price: 1299.99, quantity: 30, brand: "Apple"},
                           {name: "G3", price: 430.79, quantity: 40, brand: "LG"},
                           {name: "LED TV", price: 600.88, quantity: 16, brand: "Sony"}])