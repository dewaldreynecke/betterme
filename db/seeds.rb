# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating three prompts...'
Prompt.new(content: 'What are you grateful for today?')
Prompt.new(content: 'What are your priorities for today?')
Prompt.new(content: 'What would you like to improve about yourself today?')
puts "...done. #{Prompt.all.count} prompts created."
puts ''

puts 'Creating Activities...'
Activity.create(name: 'Holiday')
Activity.create(name: 'Exercise')
Activity.create(name: 'Good food day')
Activity.create(name: 'Sex')
Activity.create(name: 'Medical')
Activity.create(name: 'Alcohol')
Activity.create(name: 'Work')
Activity.create(name: 'Other drugs')
Activity.create(name: 'Family')
Activity.create(name: 'Home')
Activity.create(name: 'Good sleep')
Activity.create(name: 'Socialising')
puts "...done. #{Activity.all.count} activities created."
puts ''
