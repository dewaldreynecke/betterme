require "json"
require "open-uri"
require "date"

puts 'Starting seeding process.'
puts 'Clearing existing entries from database.'
Entry.destroy_all
puts 'Entries removed.'
Inspiration.destroy_all
puts 'Inspirations removed.'
Mood.destroy_all
puts 'Moods removed.'
Zenquote.destroy_all
puts 'Zenquotes removed.'
User.destroy_all
puts 'Users removed.'
puts ''

puts 'Creating user...'
User.create(email: 'me@me.com', password: '123456', fullname: 'Jack Black', theme: 'I will be more present and kind.')
puts "...done. #{User.all.count} new users created."
puts 'Demo user has email: me@me.com'
puts 'Demo user has password: 123456'
puts ''

puts 'Creating entries...'

entry = Entry.new(user_id: User.last.id,
    title: "Creating Memories with Loved Ones",
    content: "Today, on June 19th, was a day filled with laughter, love, and cherished moments with my loved ones. We shared stories, created memories, and strengthened our bonds. The happiness that comes from being surrounded by the people I care about is unmatched.",
    address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001"
  )
entry.date = Date.new(2023, 05, 19)
entry.save

entry = Entry.new(user_id: User.last.id,
    title: "Finding Balance in the Chaos",
    content: "Today, on June 20th, was a whirlwind of activity and responsibilities, but amidst the chaos, I found moments of calm and balance. It's in those moments that I can pause, breathe, and remind myself that everything will be okay.",
    address: "27 Somerset Road, Green Point, Cape Town, 8005"
  )
entry.date = Date.new(2023, 05, 20)
entry.save

entry = Entry.new(user_id: User.last.id,
    title: "Battling Inner Demons",
    content: "Today, on June 21st, I faced my inner demons head,on. The battles within ourselves can be the toughest, but I'm determined to confront my fears, doubts, and insecurities. It's not an easy journey, but it's one that leads to growth and healing.",
    address: "137 Long Street, Cape Town City Centre, Cape Town, 8000"
  )
entry.date = Date.new(2023, 05, 21)
entry.save

entry = Entry.new(user_id: User.last.id,
    title: "Weathering the Storm",
    content: "Today, on June 22nd, I felt like I was weathering a storm. Life's challenges seemed overwhelming, and the weight on my shoulders felt unbearable. But just like a storm eventually passes, I hold onto the belief that brighter days are ahead.",
    address: "23 Buitenkant Street, Cape Town City Centre, Cape Town, 8001"
  )
entry.date = Date.new(2023, 05, 22)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Awe,Inspiring Achievements",
  content: "Today, on June 23rd, I achieved something truly awe,inspiring. It may be a personal milestone, a professional accomplishment, or a significant breakthrough. The sense of awe and pride in my own abilities is electrifying.",
  address: "112 Bree Street, Cape Town City Centre, Cape Town, 8000"
)
entry.date = Date.new(2023, 05, 23)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Spreading Kindness and Receiving Joy",
  content: "Today, on June 24th, I had the opportunity to spread kindness and witness the joy it brings. Whether through a simple act of generosity or a heartfelt gesture, the happiness I received in return was immeasurable. It's a beautiful reminder of the power of compassion.",
  address: "27 Somerset Road, Green Point, Cape Town, 8005"
)
entry.date = Date.new(2023, 05, 24)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Embracing the Journey of Self-Discovery",
  content: "Today, on June 25th, I explored the path of self-discovery and found solace in the process. It's okay not to have all the answers or know exactly where I'm headed. Embracing the journey and the lessons along the way is what truly matters.",
  address: "32 Huguenot Street, Franschhoek, 7690"
)
entry.date = Date.new(2023, 05, 25)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Overcoming Obstacles with Determination",
  content: "Today, on June 26th, I faced numerous obstacles that tested my resolve. It was a challenging journey, but with unwavering determination, I managed to overcome them one by one. The strength and resilience I discovered within myself were invaluable.",
  address: "97 Durham Ave, Salt River, Cape Town, 7925"
)
entry.date = Date.new(2023, 05, 26)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Seeking Healing and Embracing Self-Care",
  content: "Today, on June 27th, I focused on healing and prioritizing self-care. When days are tough, it's crucial to be kind to ourselves and nurture our well,being. By giving myself the care and attention I need, I take small steps toward finding peace in difficult times.",
  address: "137 Long Street, Cape Town City Centre, Cape Town, 8000"
)
entry.date = Date.new(2023, 05, 27)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Embracing New Beginnings",
  content: "Today, on June 28th, I embraced new beginnings with excitement and optimism. Change can be intimidating, but it also brings countless opportunities for growth and self-discovery. I'm ready to embark on this journey with an open heart and a curious mind.",
  address: "67 Carlisle St, Paarden Eiland, Cape Town, 7405"
)
entry.date = Date.new(2023, 05, 28)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Finding Joy in Simple Pleasures",
  content: "Today, on June 29th, I found joy in the simplest of pleasures. Whether it was relishing a delicious meal, engaging in a favorite hobby, or sharing laughter with friends, these moments reminded me of the beauty and abundance of life.",
  address: "100 Main Road, Kalk Bay, Cape Town, 7975"
)
entry.date = Date.new(2023, 05, 29)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Cultivating Patience and Acceptance",
  content: "Today, on June 30th, I focused on cultivating patience and acceptance. Life unfolds at its own pace, and sometimes we need to let go of control and trust in the process. Embracing the present moment and finding peace within it is a valuable practice.",
  address: "41 Main Road, Newlands, Cape Town, 7700"
)
entry.date = Date.new(2023, 05, 30)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Finding Strength in Vulnerability",
  content: "Today, on June 17th, was a terrible day, and I felt vulnerable and exposed. But in embracing my vulnerability, I discovered strength. It takes courage to confront difficult emotions and open up, and I'm proud of myself for taking that step.",
  address: "4 Church Street, Durbanville, Cape Town, 7550"
)
entry.date = Date.new(2023, 05, 31)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Awe,Inspiring Moments of Wonder",
  content: "Today, on June 18th, I experienced awe,inspiring moments that left me speechless. Whether it was witnessing a breathtaking sunrise or marveling at the grandeur of nature, these experiences filled me with a sense of wonder and made me appreciate the beauty of the world.",
  address: "67 Carlisle St, Paarden Eiland, Cape Town, 7405"
)
entry.date = Date.new(2023, 06, 01)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Learning from Mistakes and Embracing Growth",
  content: "Today, on July 1st, I acknowledged my mistakes and chose to view them as opportunities for growth. It's through failures that we learn the most valuable lessons and refine our paths. I'm committed to using these experiences as stepping stones toward a better future.",
  address: "180 Kloof Road, Bantry Bay, Cape Town, 8005"
)
entry.date = Date.new(2023, 06, 03)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Seeking Support and Holding onto Hope",
  content: "Today I reached out for support during a difficult time. It's essential to lean on loved ones and professionals who can provide guidance and comfort. Even in the darkest moments, there is hope, and together we can find the strength to overcome.",
  address: "93 Brommersvlei Road, Constantia, Cape Town, 7806"
)
entry.date = Date.new(2023, 06, 04)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Celebrating Personal Growth and Transformation",
  content: "Today I celebrated my personal growth and transformation. It's incredible to reflect on how far I've come, overcoming challenges and evolving into a stronger version of myself. The journey continues, and I'm excited for what lies ahead.",
  address: "76 Orange Street, Gardens, Cape Town, 8001"
)
entry.date = Date.new(2023, 06, 05)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Embracing Freedom and Gratitude",
  content: "Today I celebrated freedom and expressed gratitude for the opportunities and privileges I have. It's important to recognize and appreciate the blessings in our lives, both big and small. This day reminds me of the joy that comes from living in a free and abundant world.",
  address: "19 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001"
)
entry.date = Date.new(2023, 06, 06)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Finding Peace in the Present Moment",
  content: "Today I focused on finding peace in the present moment. Amidst the busyness of life, it's crucial to take a step back, breathe, and fully immerse ourselves in the beauty and serenity of the now.",
  address: "27 Somerset Road, Green Point, Cape Town, 8005"
)
entry.date = Date.new(2023, 06, 07)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "A Day of Triumph and Success",
  content: "Today, on June 8th, was a day filled with triumph and success. I accomplished a major goal that I've been working towards for months, and the feeling of achievement is overwhelming. The sense of fulfillment and pride in my abilities is simply awesome.",
  address: "137 Long Street, Cape Town City Centre, Cape Town, 8000"
)
entry.date = Date.new(2023, 06, 10)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Blissful Moments of Pure Joy",
  content: "On June 9th, today, I experienced moments of pure joy that warmed my heart and brought a smile to my face. Whether it was spending time with loved ones, engaging in my favorite hobbies, or witnessing a beautiful sunset, every moment was infused with happiness.",
  address: "15 Dreyer Street, Claremont, Cape Town, 7708"
)
entry.date = Date.new(2023, 06, 10)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Embracing Imperfections and Finding Contentment",
  content: "Today, June 10th, was an okay day, and that's perfectly fine. Life isn't always about soaring highs or crushing lows. It's about accepting the imperfections, finding contentment in the ordinary, and appreciating the simple joys that come my way.",
  address: "41 Main Road, Newlands, Cape Town, 7700"
)
entry.date = Date.new(2023, 06, 10)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Dealing with Setbacks and Bouncing Back Stronger",
  content: "On June 11th, today was a challenging day filled with setbacks and obstacles. Things didn't go as planned, and it felt disheartening. However, I refuse to let these circumstances define me. I'm determined to learn from these experiences and bounce back stronger than ever.",
  address: "23 Buitenkant Street, Cape Town City Centre, Cape Town, 8001"
)
entry.date = Date.new(2023, 06, 11)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Navigating Darkness and Holding onto Hope",
  content: "Today, on June 12th, was a terrible day. I felt overwhelmed by sadness, disappointment, and uncertainty. But even in the midst of darkness, I hold onto a glimmer of hope. I remind myself that difficult times eventually pass, and there is always a ray of light waiting to break through.",
  address: "15 Dreyer Street, Claremont, Cape Town, 7708"
)
entry.date = Date.new(2023, 06, 12)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Surpassing Expectations and Celebrating Victories",
  content: "On June 13th, today exceeded all expectations as I accomplished more than I thought possible. It's moments like these that remind me of my potential and fuel my drive to reach even greater heights. The feeling of success is truly awesome.",
  address: "4 Church Street, Durbanville, Cape Town, 7550"
)
entry.date = Date.new(2023, 06, 13)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Gratitude for the Little Things",
  content: "Today, on June 14th, I found happiness in the little things. From savoring a delicious cup of coffee to enjoying a walk in nature, these small moments brought immense joy. It's a beautiful reminder that happiness can be found in the simplest of pleasures.",
  address: "112 Bree Street, Cape Town City Centre, Cape Town, 8000"
)
entry.date = Date.new(2023, 06, 14)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Embracing the Ebb and Flow of Life",
  content: "Today, June 15th, was an okay day, and I've learned to embrace the ebb and flow of life. Just like the tides, life has its highs and lows. And in the okay moments, I find solace in knowing that everything is part of a greater journey.",
  address: "27 Somerset Road, Green Point, Cape Town, 8005"
)
entry.date = Date.new(2023, 06, 15)
entry.save

entry = Entry.new(user_id: User.last.id,
  title: "Coping with Disappointment and Seeking Resilience",
  content: "Today, on June 16th, was a tough day filled with disappointment and frustration. It's during these challenging times that I dig deep to find resilience within myself. I remind myself that setbacks are temporary, and I have the strength to overcome them.",
  address: "32 Huguenot Street, Franschhoek, 7690"
)
entry.date = Date.new(2023, 06, 16)
entry.save

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

puts 'Creating Moods'
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 5, 19)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 5, 20)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 5, 21)
mood.user = User.last
mood.save
mood = Mood.new(mood: :terrible)
mood.date = Date.new(2023, 5, 22)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 5, 23)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 5, 24)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 5, 25)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 5, 26)
mood.user = User.last
mood.save
mood = Mood.new(mood: :terrible)
mood.date = Date.new(2023, 5, 27)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 5, 28)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 5, 29)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 5, 30)
mood.user = User.last
mood.save
mood = Mood.new(mood: :terrible)
mood.date = Date.new(2023, 5, 31)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 1)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 3)
mood.user = User.last
mood.save
mood = Mood.new(mood: :terrible)
mood.date = Date.new(2023, 6, 4)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
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
mood.date = Date.new(2023, 6, 10)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 10)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 11)
mood.user = User.last
mood.save
mood = Mood.new(mood: :terrible)
mood.date = Date.new(2023, 6, 12)
mood.user = User.last
mood.save
mood = Mood.new(mood: :awesome)
mood.date = Date.new(2023, 6, 13)
mood.user = User.last
mood.save
mood = Mood.new(mood: :happy)
mood.date = Date.new(2023, 6, 14)
mood.user = User.last
mood.save
mood = Mood.new(mood: :okay)
mood.date = Date.new(2023, 6, 15)
mood.user = User.last
mood.save
mood = Mood.new(mood: :bad)
mood.date = Date.new(2023, 6, 16)
mood.user = User.last
mood.save
puts "#{Mood.all.count} moods created."
puts ''

puts 'Creating three inspirations...'
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
Inspiration.create(text: "Write about a valuable life lesson you've learned recently.")
Inspiration.create(text: "Describe a small, everyday pleasure that brings you happiness.")
Inspiration.create(text: "Write about a pet or animal that has brought joy into your life.")
Inspiration.create(text: "Reflect on a past success and how it has shaped your present.")
Inspiration.create(text: "Write about a teacher or mentor who has made a difference in your life.")
Inspiration.create(text: "What is something beautiful you noticed in nature today?")
Inspiration.create(text: "Describe a moment when you felt truly loved and supported.")
Inspiration.create(text: "Reflect on a mistake you made and how it helped you grow.")
Inspiration.create(text: "Write about a favorite hobby or activity that brings you peace.")
Inspiration.create(text: "What is something you are looking forward to in the near future?")
Inspiration.create(text: "Write about a positive change you've made in your life recently.")
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
Inspiration.create(text: "Write about a favorite place you've visited and why it's special.")
Inspiration.create(text: "Describe a recent act of bravery or stepping out of your comfort zone.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your health.")
Inspiration.create(text: "Write about a favorite movie that always brings you joy.")
Inspiration.create(text: "What is something you appreciate about your creativity?")
Inspiration.create(text: "Write about a positive change you've witnessed in the world.")
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
Inspiration.create(text: "Write about a positive change you've made in your relationships.")
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
Inspiration.create(text: "Write about a positive change you've witnessed in someone else's life.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose.")
Inspiration.create(text: "Describe a recent act of gratitude you received and how it made you feel.")
Inspiration.create(text: "Write about a favorite quote that reminds you to stay present.")
Inspiration.create(text: "What is something you are grateful for about your creativity?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your friendships.")
Inspiration.create(text: "Write about a favorite memory with a loved one and why it's special.")
Inspiration.create(text: "Describe a recent act of kindness you observed in your community.")
Inspiration.create(text: "Write about a positive change you've made in your self-care routine.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your ability to adapt.")
Inspiration.create(text: "What is something you appreciate about your sense of humor?")
Inspiration.create(text: "Write about a favorite quote that motivates you to overcome obstacles.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your spiritual beliefs.")
Inspiration.create(text: "Describe a recent act of gratitude you expressed to yourself.")
Inspiration.create(text: "Write about a favorite place you've traveled to and why it's memorable.")
Inspiration.create(text: "What is something you are grateful for about your physical strength?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your emotional well-being.")
Inspiration.create(text: "Write about a positive change you've witnessed in the world.")
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
Inspiration.create(text: "Write about a positive change you've made in your mindset.")
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
Inspiration.create(text: "Write about a positive change you've witnessed in your community.")
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
Inspiration.create(text: "Write about a positive change you've made in your daily habits.")
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
Inspiration.create(text: "Write about a positive change you've witnessed in a global issue.")
Inspiration.create(text: "What is something you appreciate about your ability to inspire others?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your health.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose.")
Inspiration.create(text: "Describe a recent act of kindness you received from a loved one.")
Inspiration.create(text: "Write about a favorite quote that reminds you to embrace change.")
Inspiration.create(text: "What is something you are grateful for about your creativity?")
Inspiration.create(text: "Reflect on a time when you felt grateful for your close relationships.")
Inspiration.create(text: "Write about a positive change you've made in your self-confidence.")
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
Inspiration.create(text: "Write about a positive change you've witnessed in your community.")
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
Inspiration.create(text: "Write about a positive change you've witnessed in your local community.")
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
Inspiration.create(text: "Write about a positive change you've made in your daily habits or routines.")
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
Inspiration.create(text: "Write about a positive change you've witnessed or contributed to in a global or societal issue.")
Inspiration.create(text: "What is something you appreciate about your ability to inspire and uplift others?")
Inspiration.create(text: "Write about a moment of gratitude you felt for your physical health and vitality.")
Inspiration.create(text: "Reflect on a time when you felt grateful for your sense of purpose and direction in life.")
Inspiration.create(text: "Describe a recent act of kindness you received from a loved one or friend.")
Inspiration.create(text: "Write about a favorite quote or mantra that reminds you to embrace the journey and be present in each moment.")
puts "...done. #{Inspiration.all.count} inspirations created."
puts ''
