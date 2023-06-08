require "json"
require "open-uri"

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
Zenquote.destroy_all
puts 'Zenquotes removed.'
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

puts 'Creating Zen Quotes... (this will take about a minute)'
url = "https://zenquotes.io/api/quotes"
quotes_serialized = URI.open(url).read
quotes = JSON.parse(quotes_serialized)
puts 'First 50 quotes fetched from API'
quotes.each { |quote| Zenquote.create(quote: quote["q"], author: quote["a"]) }
puts 'First 50 quotes saved to database. Fetching 50 more.'
puts 'Waiting for API rate limit to timeout.'
sleep(31)
puts 'Fetching 50 more quotes.'
quotes_serialized = URI.open(url).read
quotes = JSON.parse(quotes_serialized)
puts 'Another 50 quotes fetched from API'
quotes.each { |quote| Zenquote.create(quote: quote["q"], author: quote["a"]) }
puts '50 quotes saved to database.'
puts "#{Zenquote.all.count} Zenquotes added to database."
puts ''
