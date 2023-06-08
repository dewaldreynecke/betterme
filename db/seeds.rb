# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Starting seeding process.'
puts 'Clearing existing entries from database.'
Entry.destroy_all
puts 'Entries removed.'
User.destroy_all
puts 'Users removed.'
Inspiration.destroy_all
puts 'Inspirations removed.'
Mood.destroy_all
puts 'Moods removed.'
puts ''

puts 'Creating user...'
User.create(email: 'me@me.com', password: '123456', fullname: 'Jack Black', theme: 'I will be more present and kind.')
puts "...done. #{User.all.count} new users created."
puts 'Demo user has email: me@me.com'
puts 'Demo user has password: 123456'
puts ''

puts 'Creating three inspirations...'
Inspiration.create(text: 'What are you grateful for?')
Inspiration.create(text: 'What are your priorities?')
Inspiration.create(text: 'What would you like to improve about yourself?')
puts "...done. #{Inspiration.all.count} inspirations created."
puts ''

puts 'Creating 2 entries...'
Entry.create(user_id: User.last.id, title: 'Gratitude', content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")
Entry.create(user_id: User.last.id, title: 'What a silly day', content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")
puts "#{Entry.all.count} entries created."
puts ''
