# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Job.destroy_all
Category.destroy_all
User.destroy_all

puts "creating users"


josh = User.create({email: 'jconduah729@gmail.com', password: '123456'})
karen = User.create({email: 'kpiretti56@gmail.com', password: '123456'})
johnson = User.create({email: 'mjohnson43@gmail.com', password: '123456'})
max = User.create({email: 'maxman89@gmail.com', password: '123456'})
mohammed = User.create({email: 'jmohammed19@gmail.com', password: '123456'})
francis = User.create({email: 'francishthometz@gmail.com', password: '123456'})
min = User.create({email: 'mkyoon713@gmail.com', password: '123456'})
pier = User.create({email: 'pperon914@gmail.com', password: '123456'})
taya = User.create({email: 'mmorataya70@gmail.com', password: '123456'})
jen = User.create({email: 'hjennett67@gmail.com', password: '123456'})

puts "created #{User.count} users"

puts "creating categories"

educational = Category.create(
name: 'Educational', photo: 'https://images.unsplash.com/photo-1521587760476-6c12a4b040da?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1fd72b80aa0b43f74015163c2ad6fcc5&auto=format&fit=crop&w=2700&q=80')
household = Category.create(name: 'Household', photo: 'https://images.unsplash.com/photo-1534152519866-4d57e8fc9bf5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=91360e173ea76a5d3228e58a9142a294&auto=format&fit=crop&w=2740&q=80')
animal = Category.create(name: 'Animal Care', photo: 'https://images.unsplash.com/photo-1522276498395-f4f68f7f8454?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=61a38f22baeb6a00be6663ab28dc5274&auto=format&fit=crop&w=2698&q=80')
video = Category.create(name: 'Video Games', photo: 'https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f2e8843e67935b873f32154438cf9664&auto=format&fit=crop&w=1500&q=80')
landscape = Category.create(name: 'Landscaping', photo: 'https://kleinpropertymanagement.com/wp-content/uploads/landscape-1.jpg')
food = Category.create(name: 'Food', photo: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=67fb2e7b1fbe39b18b51146234ef38aa&auto=format&fit=crop&w=1500&q=80')
auto = Category.create(name: 'Automotive', photo: 'https://images.unsplash.com/photo-1526726538690-5cbf956ae2fd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=16098a7b1f7ab00d860111bd413145c3&auto=format&fit=crop&w=1500&q=80')
labor = Category.create(name: 'General Labor', photo: 'https://images.unsplash.com/photo-1473090928358-00fcead4f08c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f041998fd8a0cb09c1da409903822780&auto=format&fit=crop&w=1284&q=80')
personal = Category.create(name: 'Personal', photo: 'https://www.healthcareitnews.com/sites/default/files/147071720.jpg')

puts "created #{Category.count} categories"


puts "Creating jobs"

job1 = Job.new(name: 'Japanese Tutor', description: 'I am a native japanese speaker who has taught for over 10 years in the greater Toledo Area.',
location: 'Toledo, Ohio', price: 20, user: josh, category: animal)
url1 = "http://eigo-jouhou.com/wp-content/uploads/2018/04/japan_fujiyoshida_mt._fuji_with_chureito_pagoda_in_autumn.jpg"
job1.remote_photo_url = url1
job1.save

job2 = Job.new(name: 'Bug Exterminator', description: 'I am a complete expert in the bug extermination field, and I provide excellent service.',
location: 'Miami, Florida', price: 35, user: karen, category: household)
url2 = 'https://media.indiedb.com/cache/images/downloads/1/134/133211/thumb_620x2000/SERVICES-IN-MELBOURNE-AND-FRANKS.png'
job2.remote_photo_url = url2
job2.save

job3 = Job.new(name: 'Fence Painter', description: 'I have painted fences for over 20 years, and take complete pride in my ability and efficency',
location: 'Toledo, Ohio', price: 15, user: max, category: landscape)
url3 = 'https://qph.fs.quoracdn.net/main-qimg-2dcdcdc613190b75852f29107bd1f864.webp'
job3.remote_photo_url = url3
job3.save

job4 = Job.new(name: 'Item Locator', description: 'Have you ever lost an item such as a ring, or your favorite sock in your house? I am the perfect man for the job, and will find any and all lost items.',
location: 'Miami, Florida', price: 11, user: josh, category: household)
url4 = 'https://cdn.aarp.net/content/dam/aarp/health/healthy-living/2017/02/1140-find-lost-items-aarp.imgcache.rev6157de2133207f2fcca2f2f689fcfcfc.jpg'
job4.remote_photo_url = url4
job4.save

job5 = Job.new(name: 'Dog Selfie Taker', description: 'I am a professional photographer that specializes in takng selfies with your dog. Any breed welcome.',
location: 'Toledo, Ohio', price: 20, user: karen, category: personal)
url5 = 'https://i.imgur.com/dTfKk8C.jpg'
job5.remote_photo_url = url5
job5.save

job6 = Job.new(name: 'Fortnite Guru', description: 'Is your child awful at fornite? If so, I am the person for you. I am an expert in the video game field and I guarantee that I will improve the skill of your kid dramatically.',
location: 'Miami, Florida', price: 25, user: max, category: video)
url6 = 'https://www.iplusone.com/media/images/fortnite.png'
job6.remote_photo_url = url6
job6.save

job7 = Job.new(name: 'Fake Boyfriend', description: 'I provide the service of a male companion to accompany you to an event such as a wedding or a banquet. Prolonged physical contact costs extra.',
location: 'Toledo, Ohio', price: 20, user: josh, category: personal)
url7 = 'https://www.karenwillisholmes.com/images/uploads/images/4z1a4161_600.jpg'
job7.remote_photo_url = url7
job7.save

job8 = Job.new(name: 'Professional Mourner', description: 'I provide services such as dramatic crying, screaming and/ or passing out at any funeral or wake service. Special requests accepted.',
location: 'Miami, Florida', price: 65, user: karen, category: personal)
url8 = 'http://www.informationng.com/wp-content/uploads/2017/09/crying-birth-1-1.jpg'
job8.remote_photo_url = url8
job8.save

job9 = Job.new(name: 'Personal Complementer', description: 'I am a personal Complementer who will follow you around and provide complements and emotional support for the entirety of the paid duration.',
location: 'Toledo, Ohio', price: 15, user: max, category: labor)
url9 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq-IYyocm1jHqrDUxJeJ3kB-g3laBGnvAMKHsRI5ZKvpx91qdp'
job9.remote_photo_url = url9
job9.save

job10 = Job.new(name: 'Guinea Pig Whisperer', description: 'Does your guinea pig refuse to listen to you? Contact me now and I can solve that. I have been working with guinea pigs for over 15 years, and have had plenty of success dealing with disobedience.',
location: 'Miami, Florida', price: 55, user: josh, category: animal)
url10 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqA0vphY6CHfNwKf40fJbbkuSetRpOrx04SkQhGVsV0FE-L1Nu'
job10.remote_photo_url = url10
job10.save

puts "created #{Job.count} jobs"


puts "creating bookings"

booking1 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job1,
user: josh,
message: 'Please help me! I am moving to Japan in a month and I know nothing.')

booking2 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job2,
user: max,
message: 'I have a bad ant infestation and I need help immediately!!!')

booking3 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job3,
user: karen,
message: 'My fence is starting to become dull and needs a fresh coat')

booking4 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job4,
user: josh,
message: 'Please respond as soon as possible! I am proposing to my wife tomorrow but I have lost the ring!')


puts "created #{Booking.count} bookings"


puts "creating reviews"
review1 = Review.create(
  content: "it was alright",
  rating: 3,
  booking: booking1)

review2 = Review.create(
  content: "THE BEST EVER",
  rating: 5,
  booking: booking2)

review3 = Review.create(
  content: "very disappointing",
  rating: 1,
  booking: booking3)

review4 = Review.create(
  content: "highly recommended!!",
  rating: 5,
  booking: booking4)

review5 = Review.create(
  content: "NEVER AGAIN :(",
  rating: 1,
  booking: booking4)

review6 = Review.create(
  content: "He was an awesome dancer",
  rating: 5,
  booking: booking1)

review7 = Review.create(
  content: "He was too old for me",
  rating: 2,
  booking: booking1)


puts "created #{Review.count} reviews"






