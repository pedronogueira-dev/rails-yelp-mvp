# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def create_restaurant
  params = {
    name: Faker::VentureBros.quote,
    address: Faker::RickAndMorty.location,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  }
  Restaurant.create(params)
end

puts "Populating DB"
5.times { create_restaurant }
puts Restaurant.all
puts "Done."
