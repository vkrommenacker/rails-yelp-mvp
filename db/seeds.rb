# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Review.destroy_all
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample
    })
    10.times do
      Review.create!({
        content: Faker::Restaurant.review,
        rating: rand(1..5),
        restaurant:
        })
    end
end
