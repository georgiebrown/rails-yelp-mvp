# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  phone_number: "01 43 54 23 31",
  category: "french" }
pizza_east =  {
  name: "Pizza East",
  address: "56A Shoreditch High St, London E1 6PQ",
  phone_number: "03 43 54 23 32",
  category: "italian"  }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

puts "Cleaning database..."
Review.destroy_all

puts "Creating reviews..."
good_review = { content: "Great",
                rating: "5",
                restaurant_id: "1" }
bad_review = { content: "Bad",
               rating: "0",
               restaurant_id: "2" }

[good_review, bad_review ].each do |attributes|
  review = Review.create!(attributes)
  puts "Created #{review.content}"
end
puts "Finished!"
