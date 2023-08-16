# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database..'
Flat.destroy_all

puts 'Creating flats...'

5.times do
  Flat.create(
    name: 'Light & Spacious Garden Flat London',
    address: Faker::Address.full_address,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 100,
    number_of_guests: 2,
    picture: 'https://images.unsplash.com/photo-1613977257363-707ba9348227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmV3JTIwaG91c2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'
  )
end
