require "json"
require "open-uri"
require "date"

puts 'Starting seeding process.'
puts 'Clearing existing entries from database.'
Entry.destroy_all
puts 'Entries removed.'
Theme.destroy_all
puts 'Themes removed'
Inspiration.destroy_all
puts 'Inspirations removed.'
Mood.destroy_all
puts 'Moods removed.'
Zenquote.destroy_all
puts 'Zenquotes removed.'
Address.destroy_all
puts 'Addresses removed.'
User.destroy_all
puts 'Users removed.'
puts ''

puts 'Creating user...'
User.create(email: 'me@me.com', password: '123456', fullname: 'Michael Timm')
puts "...done. #{User.all.count} new user(s) created."
puts 'Demo user has email: me@me.com'
puts 'Demo user has password: 123456'
puts ''

puts 'Creating favourite addresses...'
address = Address.new(name: 'Home', address: '9 Park Rd, Gardens, Cape Town, 8001')
address.user = User.last
address.save
address = Address.new(name: 'Parents', address: '6 Bergsicht, Bergsig, Cape Town, 7550')
address.user = User.last
address.save
address = Address.new(name: 'Work', address: '47 Durham Ave, Salt River, Cape Town, 7925')
address.user = User.last
address.save
puts "...done. #{Address.all.count} addresses created for user #{User.last.fullname}."
puts ''

puts 'Creating tags...'
tag = Tag.new(name: 'Family')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Drinking')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Exercise')
tag.user = User.last
tag.save
puts "...done. #{Tag.all.count} tags created for user #{User.last.fullname}."
puts ''

puts 'Creating themes...'
theme1 = Theme.new(text: 'Make time for myself',
                   start: Time.new(2023, 5, 18, 0, 0, 0, "+0200"),
                   end: Time.new(2023, 5, 27, 23, 59, 59, "+0200"))
theme1.user = User.last
theme1.save
theme2 = Theme.new(text: 'Spend more time with family and friends',
                   start: Time.new(2023, 5, 28, 0, 0, 0, "+0200"),
                   end: Time.new(2023, 6, 5, 23, 59, 59, "+0200"))
theme2.user = User.last
theme2.save
theme3 = Theme.new(text: 'Be more present and mindful',
                   start: Time.new(2023, 6, 7, 0, 0, 0, "+0200"))
theme3.user = User.last
theme3.save
puts "#{Theme.all.count} themes created."
puts ''

puts 'Creating entries...(this will take about a minute)'

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_25_d0mx2z.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Creating Memories with Loved Ones",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_25_d0mx2z.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_13_tdpnzq.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "A long day in class",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_13_tdpnzq.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_14_qeqk4s.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Learning new things, and making progress",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_14_qeqk4s.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_12_cvc7hl.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Working hard or hardly working?",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 15)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_12_cvc7hl.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_10_jnoapi.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Running towards my goal",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 14)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_10_jnoapi.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832727/Seed_19_zj3j3g.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Finally get to shoot again",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 13)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_19_zj3j3g.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832727/Seed_21_sk2qsj.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Finally get to shoot again",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 13)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_21_sk2qsj.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_18_tqs1ln.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Will I ever understand this?",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 12)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_18_tqs1ln.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832730/Seed_27_xgatab.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Beautiful day spent with family",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_27_xgatab.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_22_udm8pa.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Beautiful day spent with family",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_22_udm8pa.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832729/Seed_29_xpb9im.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Beautiful day spent with family",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_29_xpb9im.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832730/Seed_33_pikpp2.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Relaxed day at home",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_33_pikpp2.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_24_ilqqjs.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Going on adventures!",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 10)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_24_ilqqjs.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_16_orwh0r.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Javascript will be the end of me",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 7)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_16_orwh0r.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832723/Seed_1_rws6sl.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Making my way through front end",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 6)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_1_rws6sl.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_11_nuuxbq.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Front-end is an interesting beast",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 5)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_11_nuuxbq.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832723/Seed_2_waz302.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "I think I'm getting the hang of this!",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 4)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_2_waz302.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832734/Seed_49_gwgxvf.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Can't believe we're half way already",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 3)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_49_gwgxvf.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832736/Seed_57_op9bzr.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Can't believe we're half way already",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 3)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_57_op9bzr.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832723/Seed_6_wjplcq.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "The hustle is becoming real",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 2)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_6_wjplcq.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832735/Seed_52_veyrf3.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "tired.",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 1)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_52_veyrf3.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_17_iatght.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "I think web-dev is my next path",
  content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
)
entry.date = Date.new(2023, 6, 1)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_17_iatght.jpg", content_type: "image/jpg")
entry.save
sleep(1)

puts "#{Entry.all.count} entries created."
puts ''

puts 'Creating Zen Quotes... (this will take about a minute)'
puts 'Fetching from API'
url = "https://zenquotes.io/api/quotes"
quotes_serialized = URI.open(url).read
quotes = JSON.parse(quotes_serialized)
quotes.each { |quote| Zenquote.create(quote: quote["q"], author: quote["a"]) }
puts 'First 50 quotes saved to database.'
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

puts 'Creating Moods'
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 1)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 2)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 3)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 4)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 5)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 6)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 7)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 8)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 9)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 10)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 11)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 12)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 13)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 14)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 15)
mood.user = User.last
mood.save

# The moods below are commented out to facilitate development,
# but should be added back in before sending to production for demo.

# mood = Mood.new(mood: :bad)
# mood.date = Date.new(2023, 6, 11)
# mood.user = User.last
# mood.save
# mood = Mood.new(mood: :terrible)
# mood.date = Date.new(2023, 6, 12)
# mood.user = User.last
# mood.save
# mood = Mood.new(mood: :awesome)
# mood.date = Date.new(2023, 6, 13)
# mood.user = User.last
# mood.save
# mood = Mood.new(mood: :happy)
# mood.date = Date.new(2023, 6, 14)
# mood.user = User.last
# mood.save
# mood = Mood.new(mood: :okay)
# mood.date = Date.new(2023, 6, 15)
# mood.user = User.last
# mood.save
# mood = Mood.new(mood: :bad)
# mood.date = Date.new(2023, 6, 16)
# mood.user = User.last
# mood.save
puts "#{Mood.all.count} moods created."
puts ''

puts 'Creating inspirations...'
Inspiration.create(text: "Write about three things you are grateful for today.")
Inspiration.create(text: "Reflect on a recent act of kindness you received and how it made you feel.")
Inspiration.create(text: "Describe a moment of pure joy you experienced today.")
Inspiration.create(text: "Write about a challenge you overcame and what you learned from it.")
Inspiration.create(text: "What is something you appreciate about your physical health?")
Inspiration.create(text: "Write about a skill or talent you possess and how it brings you joy.")
Inspiration.create(text: "Reflect on a place that holds special meaning to you and why.")
Inspiration.create(text: "Write about a friend or family member who has positively influenced your life.")
Inspiration.create(text: "Describe a recent accomplishment you're proud of and why it matters to you.")
Inspiration.create(text: "Write about a favorite book or movie that inspires you and why.")
Inspiration.create(text: "Reflect on a time when someone forgave you, and how it impacted you.")
Inspiration.create(text: "Write about a valuable life lesson you have learned recently.")
Inspiration.create(text: "Describe a small, everyday pleasure that brings you happiness.")
Inspiration.create(text: "Write about a pet or animal that has brought joy into your life.")
Inspiration.create(text: "Reflect on a past success and how it has shaped your present.")
Inspiration.create(text: "Write about a teacher or mentor who has made a difference in your life.")
Inspiration.create(text: "What is something beautiful you noticed in nature today?")
Inspiration.create(text: "Describe a moment when you felt truly loved and supported.")
Inspiration.create(text: "Reflect on a mistake you made and how it helped you grow.")
Inspiration.create(text: "Write about a favorite hobby or activity that brings you peace.")
Inspiration.create(text: "What is something you are looking forward to in the near future?")
Inspiration.create(text: "Write about a positive change you have made in your life recently.")
Inspiration.create(text: "Reflect on a time when you helped someone and made a difference.")
Inspiration.create(text: "Describe a skill or talent you admire in someone else and why.")
Inspiration.create(text: "Write about a favorite quote or mantra that inspires you.")
Inspiration.create(text: "What is something unique or special about your personality?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your job or career.")
Inspiration.create(text: "Write about a favorite song that always lifts your spirits.")
Inspiration.create(text: "Describe a recent act of self-care and how it made you feel.")
Inspiration.create(text: "Write about a moment of gratitude you experienced today.")
Inspiration.create(text: "Reflect on a time when you felt proud of someone else's success.")
Inspiration.create(text: "What is something you appreciate about your home environment?")
Inspiration.create(text: "Write about a favorite memory from your childhood and why it's significant.")
Inspiration.create(text: "Describe a recent act of generosity that touched your heart.")
Inspiration.create(text: "Reflect on a difficult decision you made and the positive outcome.")
Inspiration.create(text: "Write about a favorite quote that motivates you to keep going.")
Inspiration.create(text: "What is something you are grateful for about your physical appearance?")
Inspiration.create(text: "Write about a positive interaction you had with a stranger recently.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your family.")
Inspiration.create(text: "Describe a recent experience of personal growth and what you learned.")
Inspiration.create(text: "Write about a favorite piece of artwork and why it resonates with you.")
Inspiration.create(text: "What is something you appreciate about your sense of humor?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your education.")
Inspiration.create(text: "Write about a favorite place you have visited and why it's special.")
Inspiration.create(text: "Describe a recent act of bravery or stepping out of your comfort zone.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your health.")
Inspiration.create(text: "Write about a favorite movie that always brings you joy.")
Inspiration.create(text: "What is something you appreciate about your creativity?")
Inspiration.create(text: "Write about a positive change you have witnessed in the world.")
Inspiration.create(text: "Reflect on a time when you felt grateful for technology.")
Inspiration.create(text: "Describe a recent act of kindness you performed and how it made you feel.")
Inspiration.create(text: "Write about a favorite book that has had a significant impact on you.")
Inspiration.create(text: "What is something you are looking forward to in the distant future?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your community.")
Inspiration.create(text: "Write about a moment of unexpected beauty you experienced today.")
Inspiration.create(text: "Describe a recent act of forgiveness that brought you peace.")
Inspiration.create(text: "Write about a favorite quote that inspires you to be your best self.")
Inspiration.create(text: "What is something you appreciate about your intelligence or knowledge?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your financial stability.")
Inspiration.create(text: "Write about a favorite recipe or meal that brings you comfort.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to someone else.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your opportunities.")
Inspiration.create(text: "Write about a favorite piece of music that stirs your emotions.")
Inspiration.create(text: "What is something you appreciate about your resilience or strength?")
Inspiration.create(text: "Write about a positive change you have made in your relationships.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of belonging.")
Inspiration.create(text: "Describe a recent act of self-reflection and the insights you gained.")
Inspiration.create(text: "Write about a favorite quote that encourages you to take risks.")
Inspiration.create(text: "What is something you are grateful for about your intuition?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your personal freedom.")
Inspiration.create(text: "Write about a favorite poem or piece of writing that inspires you.")
Inspiration.create(text: "Describe a recent act of selflessness you witnessed and how it impacted you.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your ability to learn.")
Inspiration.create(text: "Write about a favorite place in nature that brings you peace.")
Inspiration.create(text: "What is something you appreciate about your inner strength or resilience?")
Inspiration.create(text: "Write about a positive change you have witnessed in someone else's life.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose.")
Inspiration.create(text: "Describe a recent act of gratitude you received and how it made you feel.")
Inspiration.create(text: "Write about a favorite quote that reminds you to stay present.")
Inspiration.create(text: "What is something you are grateful for about your creativity?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your friendships.")
Inspiration.create(text: "Write about a favorite memory with a loved one and why it's special.")
Inspiration.create(text: "Describe a recent act of kindness you observed in your community.")
Inspiration.create(text: "Write about a positive change you have made in your self-care routine.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your ability to adapt.")
Inspiration.create(text: "What is something you appreciate about your sense of humor?")
Inspiration.create(text: "Write about a favorite quote that motivates you to overcome obstacles.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your spiritual beliefs.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to yourself.")
Inspiration.create(text: "Write about a favorite place you have traveled to and why it's memorable.")
Inspiration.create(text: "What is something you are grateful for about your physical strength?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your emotional well-being.")
Inspiration.create(text: "Write about a positive change you have witnessed in the world.")
Inspiration.create(text: "Describe a recent act of generosity you performed and how it made you feel.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your personal growth.")
Inspiration.create(text: "Write about a favorite song that always brings a smile to your face.")
Inspiration.create(text: "What is something you appreciate about your communication skills?")
Inspiration.create(text: "Write about a moment of gratitude you experienced today.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your financial security.")
Inspiration.create(text: "Describe a recent act of self-care that nourished your soul.")
Inspiration.create(text: "Write about a favorite quote that inspires you to love yourself.")
Inspiration.create(text: "What is something you are grateful for about your body?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your mental clarity.")
Inspiration.create(text: "Write about a positive change you have made in your mindset.")
Inspiration.create(text: "Describe a recent act of kindness you received and how it touched you.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your career opportunities.")
Inspiration.create(text: "Write about a favorite movie that always brings you laughter.")
Inspiration.create(text: "What is something you appreciate about your ability to empathize?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your family.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your artistic talents.")
Inspiration.create(text: "Describe a recent act of forgiveness you extended and how it freed you.")
Inspiration.create(text: "Write about a favorite quote that reminds you to be present in the moment.")
Inspiration.create(text: "What is something you are grateful for about your intelligence or wisdom?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your physical abilities.")
Inspiration.create(text: "Write about a positive change you have witnessed in your community.")
Inspiration.create(text: "Describe a recent act of selflessness you performed and how it made a difference.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your education.")
Inspiration.create(text: "Write about a favorite piece of artwork and what it represents to you.")
Inspiration.create(text: "What is something you appreciate about your sense of adventure?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your friends.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your personal achievements.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to nature.")
Inspiration.create(text: "Write about a favorite book that has expanded your perspective.")
Inspiration.create(text: "What is something you are grateful for about your ability to love?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your home.")
Inspiration.create(text: "Write about a positive change you have made in your daily habits.")
Inspiration.create(text: "Describe a recent act of kindness you witnessed and how it inspired you.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your emotional resilience.")
Inspiration.create(text: "Write about a favorite quote that motivates you to live authentically.")
Inspiration.create(text: "What is something you appreciate about your ability to solve problems?")
Inspiration.create(text: "Write about a moment of gratitude you experienced today.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your financial abundance.")
Inspiration.create(text: "Describe a recent act of self-care that rejuvenated your spirit.")
Inspiration.create(text: "Write about a favorite place in nature that brings you tranquility.")
Inspiration.create(text: "What is something you are grateful for about your inner peace?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your professional growth.")
Inspiration.create(text: "Write about a favorite quote that encourages you to follow your dreams.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to a stranger.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your ability to learn from mistakes.")
Inspiration.create(text: "Write about a positive change you have witnessed in a global issue.")
Inspiration.create(text: "What is something you appreciate about your ability to inspire others?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your health.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose.")
Inspiration.create(text: "Describe a recent act of kindness you received from a loved one.")
Inspiration.create(text: "Write about a favorite quote that reminds you to embrace change.")
Inspiration.create(text: "What is something you are grateful for about your creativity?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your close relationships.")
Inspiration.create(text: "Write about a positive change you have made in your self-confidence.")
Inspiration.create(text: "Describe a recent act of generosity you witnessed and how it touched you.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your ability to adapt to challenges.")
Inspiration.create(text: "Write about a favorite song that always lifts your spirits.")
Inspiration.create(text: "What is something you appreciate about your communication skills?")
Inspiration.create(text: "Write about a moment of gratitude you experienced today.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your financial stability.")
Inspiration.create(text: "Describe a recent act of self-care that nourished your soul.")
Inspiration.create(text: "Write about a favorite quote that inspires you to love yourself.")
Inspiration.create(text: "What is something you are grateful for about your body?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your mental well-being.")
Inspiration.create(text: "Write about a positive change you have witnessed in your community.")
Inspiration.create(text: "Describe a recent act of kindness you received and how it impacted you.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your career opportunities.")
Inspiration.create(text: "Write about a favorite movie or TV show that brings you joy.")
Inspiration.create(text: "What is something you appreciate about your ability to empathize with others?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your family or loved ones.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your artistic or creative pursuits.")
Inspiration.create(text: "Describe a recent act of forgiveness you extended to someone and how it freed you.")
Inspiration.create(text: "Write about a favorite quote that reminds you to be present in the moment.")
Inspiration.create(text: "What is something you are grateful for about your intelligence or wisdom?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your physical health and well-being.")
Inspiration.create(text: "Write about a positive change you have witnessed in your local community.")
Inspiration.create(text: "Describe a recent act of selflessness you performed and how it made a difference.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your educational opportunities.")
Inspiration.create(text: "Write about a favorite piece of artwork or creative expression and what it represents to you.")
Inspiration.create(text: "What is something you appreciate about your sense of adventure and curiosity?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your friends or social connections.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your personal achievements and growth.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to nature or the environment.")
Inspiration.create(text: "Write about a favorite book or literary work that has expanded your perspective.")
Inspiration.create(text: "What is something you are grateful for about your ability to love and show compassion?")
Inspiration.create(text: "Reflect on a time when you felt grateful for the comfort and security of your home.")
Inspiration.create(text: "Write about a positive change you have made in your daily habits or routines.")
Inspiration.create(text: "Describe a recent act of kindness you witnessed and how it inspired you to do good.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your emotional resilience and strength.")
Inspiration.create(text: "Write about a favorite quote or affirmation that motivates you to live authentically.")
Inspiration.create(text: "What is something you appreciate about your ability to solve problems and overcome challenges?")
Inspiration.create(text: "Write about a moment of gratitude you experienced today for the simple pleasures in life.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your financial abundance and stability.")
Inspiration.create(text: "Describe a recent act of self-care that rejuvenated your mind, body, or spirit.")
Inspiration.create(text: "Write about a favorite place in nature or a peaceful setting that brings you tranquility.")
Inspiration.create(text: "What is something you are grateful for about your inner peace and contentment?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your professional growth and achievements.")
Inspiration.create(text: "Write about a favorite quote that reminds you to have courage and embrace change.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to a stranger or someone you don't know well.")
Inspiration.create(text: "Reflect on a time when you felt grateful for the lessons you learned from your mistakes.")
Inspiration.create(text: "Write about a positive change you have witnessed or contributed to in a global or societal issue.")
Inspiration.create(text: "What is something you appreciate about your ability to inspire and uplift others?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your physical health and vitality.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose and direction in life.")
Inspiration.create(text: "Describe a recent act of kindness you received from a loved one or friend.")
Inspiration.create(text: "Write about a favorite quote or mantra that reminds you to embrace the journey and be present in each moment.")
puts "...done. #{Inspiration.all.count} inspirations created."
puts ''
