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
tag = Tag.new(name: 'Study')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Family')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Drinking')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Exercise')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Holiday')
tag.user = User.last
tag.save
tag = Tag.new(name: 'Rest')
tag.user = User.last
tag.save
puts "...done. #{Tag.all.count} tags created for user #{User.last.fullname}."
puts ''

puts 'Creating themes...'
theme1 = Theme.new(text: 'Make time for myself',
                   start: Time.new(2023, 6, 1, 0, 0, 0, "+0200"),
                   end: Time.new(2023, 6, 7, 23, 59, 59, "+0200"))
theme1.user = User.last
theme1.save
theme2 = Theme.new(text: 'Spend more time with family and friends',
                   start: Time.new(2023, 6, 7, 0, 0, 0, "+0200"),
                   end: Time.new(2023, 6, 10, 10, 59, 59, "+0200"))
theme2.user = User.last
theme2.save
theme3 = Theme.new(text: 'Focus pays off',
                   start: Time.new(2023, 6, 10, 0, 0, 0, "+0200"))
theme3.user = User.last
theme3.save
puts "#{Theme.all.count} themes created."
puts ''

puts 'Creating entries...(this will take about a minute)'

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_13_tdpnzq.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "A long day in class",
  content: "Today was an intense and challenging day in class. From early morning lectures to late-night coding sessions, it felt like a whirlwind of information and tasks. The complexity of web development can be overwhelming at times, and today was a reminder of the effort required to truly understand and master the concepts. Despite the mental exhaustion, I remained focused and engaged, knowing that every moment of perseverance brings me closer to my goals. As I reflect on this long day, I'm reminded of the resilience and determination it takes to thrive in the ever-evolving world of web development.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_13_tdpnzq.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_14_qeqk4s.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Learning new things, and making progress",
  content: "Today has been a day of discovery and growth in my web development journey. I've been diving into new concepts and technologies, expanding my knowledge and skill set. Each new piece of information learned feels like a small victory, and I can see myself making progress. It's both exciting and humbling to realize how much there is to learn in this field. Despite the challenges and occasional frustrations, I'm motivated by the satisfaction that comes with understanding something new. With every step forward, I become more confident in my ability to navigate the vast world of web development.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_14_qeqk4s.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832735/Seed_54_qb1ppc.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Big day today",
  content: "Today is a day filled with anticipation and nervous energy. It's a big day in my web development journey, a day that holds significant importance and potential outcomes. The culmination of weeks, if not months, of hard work and dedication has led to this moment.

  As I prepare myself for the challenges that lie ahead, I can't help but feel a mix of excitement and apprehension. This day represents an opportunity to showcase my skills, to present my ideas, and to demonstrate the progress I've made. It's a chance to receive feedback, to learn from the experience, and to grow as a developer.

  The weight of this day is a testament to the passion and commitment I've poured into my web development endeavors. It's a reminder of the immense possibilities that await me and the impact I can make in this field.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 16)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_54_qb1ppc.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_12_cvc7hl.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Working hard or hardly working?",
  content: "Today, I find myself contemplating the balance between working hard and taking breaks in my web development journey. There are days when I dive headfirst into coding, completely absorbed in the tasks at hand. Other times, I feel overwhelmed and struggle to find the motivation to work. It's important to find a rhythm that allows for both focused productivity and self-care. Recognizing when to take breaks and recharge is just as crucial as putting in the effort. I'm learning to listen to my mind and body, seeking a healthy equilibrium that keeps me engaged, motivated, and progressing towards my goals.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 15)
entry.theme = Theme.last
entry.tags = [Tag.first, Tag.second]
entry.photos.attach(io: file, filename: "Seed_12_cvc7hl.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_15_t2q0x0.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Excited, but nervous about tomorrow's demo",
  content: "As tomorrow's demo approaches, I find myself caught in a whirlwind of emotions. Excitement and nervousness mingle within me, creating a unique blend of anticipation. I've been working tirelessly, pouring my heart and soul into the web development project that will be showcased. The opportunity to present my hard work and demonstrate the skills I've acquired is both thrilling and anxiety-inducing. Will everything go smoothly? Will I be able to articulate my ideas effectively? These questions dance in my mind, but deep down, I know that this nervousness is a sign of my investment and passion for web development. I take a deep breath, reminding myself to embrace the challenge, and channel my energy into delivering a compelling and successful demo.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 15)
entry.theme = Theme.last
entry.tags = [Tag.first, Tag.second]
entry.photos.attach(io: file, filename: "Seed_15_t2q0x0.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832724/Seed_8_ae8wy0.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "I've learnt so much",
  content: "Looking back on my web development journey, I am filled with a profound sense of gratitude and accomplishment. The knowledge and skills I have acquired throughout this experience are invaluable. From the basics of HTML and CSS to more advanced concepts like JavaScript frameworks and backend development, I have expanded my horizons and embraced the ever-evolving landscape of web development.

  Each milestone reached, each challenge overcome, has shaped me into a more resilient and versatile developer. I have discovered the power of problem-solving, the joy of creativity, and the satisfaction of building something meaningful. The learning process has been both exhilarating and humbling, reminding me that growth is a continuous journey.

  As I reflect on how far I've come, I can't help but appreciate the support and guidance I've received from mentors, fellow learners, and the vast online community. Their insights and shared experiences have enriched my learning and inspired me to push beyond my limits.

  Yet, this realization of how much I have learned is not accompanied by a sense of complacency. On the contrary, it ignites a desire to keep expanding my knowledge, staying up-to-date with industry trends, and mastering new technologies. Learning in web development is a lifelong pursuit, and I'm excited to embrace the challenges and opportunities that lie ahead.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 15)
entry.theme = Theme.last
entry.tags = [Tag.first, Tag.second]
entry.photos.attach(io: file, filename: "Seed_8_ae8wy0.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_25_d0mx2z.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Cherishing Memories with Loved Ones",
  content: "Today was a special day as I took a break from my web development studies to remember beautiful memories with my loved ones. We embarked on an adventure together, exploring new places and experiencing joyous moments. Being surrounded by the warmth and laughter of family and friends reminded me of the importance of balance in life. While my web development journey is a significant part of my growth, it's equally vital to nourish the relationships that bring meaning and happiness. Today's memories will serve as a reminder of the love and support that fuels my pursuit of knowledge and success in web development.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 6, 15)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_25_d0mx2z.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832725/Seed_10_jnoapi.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Running towards my goal",
  content: "Like a runner in a race, I am sprinting towards my web development goals. Each day brings new challenges and opportunities, and I embrace them with determination and focus. Sometimes the path feels arduous, but I remind myself of the bigger picture – the satisfaction of achieving what I set out to do. It's the drive to master new technologies, build innovative websites, and contribute to the digital landscape that propels me forward. With each step I take, I'm closer to crossing the finish line, armed with a wealth of skills and knowledge, ready to make a meaningful impact in the world of web development.",
  address: "6 Bergsicht, Bergsig, Cape Town, 7550"
)
entry.date = Date.new(2023, 6, 14)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_10_jnoapi.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832734/Seed_49_gwgxvf.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Dealing with my imposter syndrome",
  content: "Like a runner in a race, I am sprinting towards my web development goals. Each day brings new challenges and opportunities, and I embrace them with determination and focus. Sometimes the path feels arduous, but I remind myself of the bigger picture – the satisfaction of achieving what I set out to do. It's the drive to master new technologies, build innovative websites, and contribute to the digital landscape that propels me forward. With each step I take, I'm closer to crossing the finish line, armed with a wealth of skills and knowledge, ready to make a meaningful impact in the world of web development.",
  address: "6 Bergsicht, Bergsig, Cape Town, 7550"
)
entry.date = Date.new(2023, 6, 14)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_49_gwgxvf.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832734/Seed_51_mabhmy.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "The end is nigh",
  content: "As I approach the final stages of my web development journey, a mix of emotions swirls within me. The end is nigh, and with it comes a sense of accomplishment and relief, mingled with a touch of bittersweet sentiment. The countless hours spent coding, troubleshooting, and learning are culminating in this defining moment. While I'm excited to see the fruits of my labor, there's also a tinge of nostalgia for the journey itself. The challenges, the breakthroughs, and the camaraderie with fellow learners have shaped me in ways beyond technical expertise. As the end draws near, I reflect on the growth, the transformation, and the new possibilities that lie ahead. The end may be nigh, but the beginning of a new chapter awaits.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 14)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_51_mabhmy.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832727/Seed_19_zj3j3g.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Finally got to shoot again",
  content: "Today, I had the chance to revisit a project that I had set aside for a while due to other commitments. It felt like getting back to an old hobby, picking up where I left off. The joy and excitement of coding and building a website rushed back to me, and I was reminded of why I fell in love with web development in the first place. It's exhilarating to see my project come to life, and I appreciate the opportunity to engage with my creative side. Today's experience reaffirmed my passion for web development and fueled my enthusiasm to continue creating and exploring.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 6, 14)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_19_zj3j3g.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832727/Seed_21_sk2qsj.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Big leaps today",
  content: "Today was a day of significant progress in my web development journey. I tackled complex coding challenges, implemented new features, and pushed myself outside of my comfort zone. It's incredible to witness the leaps I've made in my skills and confidence. Each breakthrough feels like a milestone, reminding me of the power of persistence and hard work. These big leaps propel me forward, encouraging me to continue embracing challenges and embracing continuous learning. I'm grateful for the opportunities that push me to grow, reminding me that the possibilities in web development are vast and rewarding.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 6, 13)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_21_sk2qsj.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_18_tqs1ln.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Will I ever understand this?",
  content: "Today was a day of significant progress in my web development journey. I tackled complex coding challenges, implemented new features, and pushed myself outside of my comfort zone. It's incredible to witness the leaps I've made in my skills and confidence. Each breakthrough feels like a milestone, reminding me of the power of persistence and hard work. These big leaps propel me forward, encouraging me to continue embracing challenges and embracing continuous learning. I'm grateful for the opportunities that push me to grow, reminding me that the possibilities in web development are vast and rewarding.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 12)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_18_tqs1ln.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832730/Seed_27_xgatab.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Beautiful day spent with family",
  content: "Today, I took a break from my web development endeavors to cherish a beautiful day spent with my family. We enjoyed quality time together, exploring nature, sharing laughter, and creating cherished memories. It's crucial to remember that our journey in web development is not just about achieving professional goals but also about maintaining a balanced and fulfilling life. The support and love of family provide the foundation upon which we build our dreams. Today's beautiful day reminded me of the importance of taking breaks, nurturing relationships, and finding inspiration outside the realm of coding.",
  address: "6 Bergsicht, Bergsig, Cape Town, 7550"
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.last
entry.tags = [Tag.first, Tag.second]
entry.photos.attach(io: file, filename: "Seed_27_xgatab.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_22_udm8pa.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Happy about my progress so far",
  content: "Today was a beautiful day, and I decided to take a break from my web development studies to spend quality time with my family. We went for a picnic in the park, enjoying the warm sunshine and the laughter that filled the air. It was refreshing to step away from the screen and immerse myself in the joy of the present moment. Being surrounded by loved ones reminded me of the importance of balance in life. These moments of connection and rejuvenation fuel my motivation to continue learning web development and create a future where I can balance work and cherished family moments.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.last
entry.tags = [Tag.first]
entry.photos.attach(io: file, filename: "Seed_22_udm8pa.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_16_orwh0r.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Excited to see where this goes",
  content: "As I delve deeper into the world of web development, a sense of anticipation and excitement fills my heart. The possibilities and potential that lie ahead are endless, and I can't help but wonder where this journey will take me.

  With each line of code I write and each project I complete, I am honing my skills and expanding my knowledge. I feel a growing confidence in my abilities and a hunger to explore new technologies and frameworks. The fast-paced nature of web development fuels my curiosity and ignites my passion for continuous learning.

  But it's not just the technical aspects that excite me. It's the opportunity to create, to build something meaningful and impactful. The ability to craft visually stunning and user-friendly websites, to solve real-world problems through innovative digital solutions, fills me with a sense of purpose.

  I am excited to see where this goes – to witness how my skills and expertise evolve, to collaborate with like-minded individuals, and to contribute to the ever-changing landscape of the web. The dynamic nature of this field means that there will always be something new to learn, new challenges to overcome, and new ideas to explore",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_16_orwh0r.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832729/Seed_29_xpb9im.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Beautiful day spent with family",
  content: "I'm feeling a deep sense of satisfaction and pride when I reflect on my progress in learning web development. From grasping the fundamentals of HTML and CSS to experimenting with JavaScript, I can see how far I've come. The hours spent coding and problem-solving have paid off, and it's rewarding to witness my skills grow. Every step forward boosts my confidence and motivates me to keep pushing myself further. While there's still much to learn, I'm embracing this moment of celebration and using it as fuel to continue my journey with even more determination and enthusiasm.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_29_xpb9im.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832730/Seed_33_pikpp2.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Relaxed day at home",
  content: "Today was a much-needed break from the intensity of learning web development. I decided to have a relaxed day at home, indulging in some self-care activities. I curled up with a good book, enjoyed a cup of tea, and simply allowed myself to unwind. Giving myself permission to recharge and rejuvenate is crucial on this learning journey. It's easy to get caught up in the demands of acquiring new skills, but it's equally important to find balance and take care of my well-being. Today's quiet and peaceful day reminded me of the value of rest and allowed me to return to my studies with a refreshed perspective.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 6, 11)
entry.theme = Theme.last
entry.photos.attach(io: file, filename: "Seed_33_pikpp2.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832728/Seed_24_ilqqjs.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Going on adventures!",
  content: "Web development has opened up a world of possibilities and adventures for me. With every new concept I learn, I feel a surge of excitement to explore and apply it in creative ways. I find myself constantly seeking new challenges and projects that push the boundaries of my skills. From building responsive websites to diving into backend development, every adventure fuels my passion and curiosity. It's invigorating to embark on this journey of continuous learning and discovery. The thrill of creating something meaningful and impactful keeps me motivated and reminds me why I chose web development as my path.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 10)
entry.theme = Theme.second
entry.photos.attach(io: file, filename: "Seed_24_ilqqjs.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832726/Seed_16_orwh0r.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Javascript will be the end of me",
  content: "JavaScript, oh JavaScript! The road to mastering this powerful language is filled with twists, turns, and moments of frustration. As I dive deeper into JavaScript, I encounter complex concepts and face the challenges of debugging and troubleshooting. It's a language that demands attention to detail and a strong problem-solving mindset. There are times when I feel like throwing my hands up in the air, questioning my abilities. But deep down, I know that overcoming these obstacles will lead to immense growth. JavaScript may be tough, but I'm determined to conquer it and emerge stronger on the other side.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 7)
entry.theme = Theme.second
entry.photos.attach(io: file, filename: "Seed_16_orwh0r.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832723/Seed_1_rws6sl.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Making my way through front end",
  content: "As I delve deeper into the world of web development, I find myself navigating through the realm of front-end development. It's an exciting and dynamic space that combines design and coding, and I'm intrigued by the possibilities it offers. Learning HTML, CSS, and JavaScript has been both challenging and rewarding. I'm slowly gaining a better understanding of how to structure web pages, style them, and add interactivity. The journey is just beginning, but I'm determined to keep pushing forward, building my skills, and embracing the opportunities that front-end development has to offer.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
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
  content: "Front-end development has proven to be quite the interesting beast. It's a constantly evolving field with new frameworks, libraries, and techniques emerging all the time. There's always something new to learn, which keeps me on my toes. The blend of creativity and logic required in front-end development is fascinating. It's not just about writing code; it's about crafting user experiences and making websites visually appealing. It can be overwhelming at times, but I'm up for the challenge. Embracing the ever-changing nature of front-end development excites me and keeps me motivated to keep pushing forward.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
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
  content: "After weeks of practice and learning, I can confidently say that I'm getting the hang of web development. The concepts that seemed daunting at first are starting to make sense, and I'm able to apply my knowledge to solve problems and build functional websites. It's incredibly satisfying to see my code come to life and witness the impact it can have on user experiences. While there's still much to learn and improve upon, this sense of progress is invigorating and encourages me to keep honing my skills and exploring new possibilities in the realm of web development.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 6, 4)
entry.theme = Theme.first
entry.photos.attach(io: file, filename: "Seed_2_waz302.jpg", content_type: "image/jpg")
entry.save
sleep(1)

file = URI.open("https://res.cloudinary.com/dsi0ucqtn/image/upload/v1686832734/Seed_49_gwgxvf.jpg")
entry = Entry.new(
  user_id: User.last.id,
  title: "Good times are coming",
  content: "As I continue my web development journey, I can't help but feel a sense of optimism and excitement for what lies ahead. The more I learn and practice, the more confident I become in my abilities. I can envision a future where I create innovative web solutions, collaborate with like-minded individuals, and contribute to meaningful projects. The world of web development is vast, and it offers endless opportunities for growth and creativity. I look forward to the challenges, the successes, and the continuous learning that awaits me on this exciting path.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
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
  content: "Time flies when you're immersed in learning web development! It's hard to believe that I'm already halfway through my journey. Looking back at where I started, I'm amazed at how much progress I've made. From understanding the basics to building complex web applications, it's been a rollercoaster of knowledge and experiences. There were moments of frustration, but they were overshadowed by the satisfaction of overcoming obstacles and witnessing my growth. I'm proud of how far I've come, and it motivates me to continue pushing myself in the second half of this adventure. The best is yet to come!",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
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
  content: "The past few weeks have been a whirlwind of activity, and I can't help but feel that the hustle is becoming real. Every day is packed with endless to-do lists, deadlines, and constant juggling of multiple projects. It's both exhilarating and exhausting at the same time. The more I dive into my work, the more I realize how much effort and dedication it takes to achieve my goals. It's a constant push to stay motivated and focused, but deep down, I know it's all worth it. The hustle is real, and I'm ready to embrace it with open arms.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
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
  content: "Today, I woke up feeling utterly exhausted. The fatigue has settled into my bones, and even the simplest tasks feel like a Herculean effort. The hustle and bustle of life have taken their toll on me, and I can't help but yearn for a moment of respite. Burnout is a real threat, and I need to remind myself to take breaks, prioritize self-care, and recharge. It's okay to feel tired; it's a sign that I've been putting in the effort. But I must remember that pushing myself to the limit without taking care of my well-being will only lead to diminishing returns. Today, I choose to rest and rejuvenate.",
  address: "47 Durham Ave, Salt River, Cape Town, 7925"
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
  content: "I've come to the realization that web development might just be the path I want to pursue. The endless possibilities of creating interactive and engaging websites, the opportunity to solve problems through coding, and the chance to continuously learn and grow in a rapidly evolving field all appeal to me. It's an exciting journey to embark upon, and while I know there will be challenges along the way, I'm eager to dive into the world of web development and see where it takes me.",
  address: "9 Park Rd, Gardens, Cape Town, 8001"
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
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 1)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 2)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 3)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
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
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 7)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 8)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 9)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
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
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 13)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 14)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
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
