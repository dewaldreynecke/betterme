# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Destroying all existing entries in the database...'
Entry.destroy_all
puts '...done.'

puts 'Creating user'

#creating user

User.create(
  email: 'me@me.com',
  password: '123456',
  fullname: 'Peter Jackson'
)

puts ' user created.'
puts "#{User.all.count} users created."
puts "They all have the password: '123456'"
puts ''

puts 'Creating 2 entries...'
Entry.create(user_id: User.last.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")
Entry.create(user_id: User.last.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")

puts '...done.'
puts ''
