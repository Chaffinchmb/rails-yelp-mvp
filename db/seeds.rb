# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
madonna_me = { name: 'Madonna Me', address: 'cours Balguerie Stuttenberg, Bordeaux', category: 'italian' }
mitsuba = { name: 'Mistuba', address: '11 rue des piliers de tutelle, Bordeaux', category: 'japanese' }
dragon_dore = { name: 'Dragon Dore', address: 'rue Paul Louis Lande, Bordeaux', category: 'chinese' }
son = { name: 'Son', address: 'rue Paul Louis Lande, Bordeaux', category: 'french' }
leon = { name: 'Leon', address: '3 rue Lino Ventura, Villenave', category: 'belgian' }

[madonna_me, mitsuba, dragon_dore, son, leon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
