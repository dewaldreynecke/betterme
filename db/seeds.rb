# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Starting seeding process.'
puts 'Clearing existing entries from database.'
Activity.destroy_all
puts 'Activities removed.'
Prompt.destroy_all
puts 'Prompts removed.'
Contact.destroy_all
puts 'Contacts removed.'
Entry.destroy_all
puts 'Entries removed.'
User.destroy_all
puts 'Users removed.'
puts ''

puts 'Creating user...'
User.create(email: 'me@me.com', password: '123456', fullname: 'Jack Black', theme: 'I will be more present and kind.')
puts "...done. #{User.all.count} new users created."
puts 'Demo user has email: me@me.com'
puts 'Demo user has password: 123456'
puts ''

puts 'Creating three prompts...'
Prompt.create(content: 'What are you grateful for?')
Prompt.create(content: 'What are your priorities?')
Prompt.create(content: 'What would you like to improve about yourself?')
puts "...done. #{Prompt.all.count} prompts created."
puts ''

puts 'Creating Activities...'
Activity.create!(name: 'Holiday')
Activity.create!(name: 'Exercise')
Activity.create!(name: 'Good food day')
Activity.create!(name: 'Sex')
Activity.create!(name: 'Medical')
Activity.create!(name: 'Alcohol')
Activity.create!(name: 'Work')
Activity.create!(name: 'Other drugs')
Activity.create!(name: 'Family')
Activity.create!(name: 'Home')
Activity.create!(name: 'Good sleep')
Activity.create!(name: 'Socialising')
puts "...done. #{Activity.all.count} activities created."
puts ''

puts 'Creating 2 entries...'
Entry.create(user_id: User.last.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")
Entry.create(user_id: User.last.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius ex sit amet nibh tempus, sed laoreet felis rutrum. Morbi sed massa varius, fermentum massa")
puts "#{Entry.all.count} entries created."
puts ''