# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
name: 'Educational', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
household = Category.create(name: 'Household', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
animal = Category.create(name: 'Animal Care', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
video = Category.create(name: 'Video Games', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
landscape = Category.create(name: 'Landscaping', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
food = Category.create(name: 'Food', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
auto = Category.create(name: 'Automotive', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
labor = Category.create(name: 'General Labor', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
personal = Category.create(name: 'Personal', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')

puts "created #{Category.count} categories"


puts "Creating jobs"

job1 = Job.create(name: 'Japanese Tutor', description: 'I am a native japanese speaker who has taught for over 10 years in the Toledo Area.',
location: 'Toledo, Ohio', price: 20, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: animal)
job2 = Job.create(name: 'Bug exterminator', description: 'I am a complete expert in the bug extermination field, and I provide excelent service.',
location: 'Miami, Florida', price: 35, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: household)
job3 = Job.create(name: 'Fence Painter', description: 'I have painted fences for over 20 years, and take complete pride in my ability and efficency',
location: 'Toledo, Ohio', price: 15, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: landscape)
job4 = Job.create(name: 'Item locator', description: 'Have you ever lost an item such as a ring, or your favorite sock in your house? I am the perfect man for the job, and will find any and all lost items.',
location: 'Miami, Florida', price: 11, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: household)
job5 = Job.create(name: 'Dog selfie taker', description: 'I am a professional photographer that specializes in takng selfies with your dog. Any size welcome.',
location: 'Toledo, Ohio', price: 20, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: personal)
job6 = Job.create(name: 'Fortnite guru', description: 'Is your child awful at fornite? If so, I am the person for you. I am an expert in the video game field and I guarantee that I will improve the skill of your kid dramatically.',
location: 'Miami, Florida', price: 25, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: video)
job7 = Job.create(name: 'Fake Boyfriend', description: 'I provide the service of a male companion to accompany you to an event such as a wedding or a banquet. Prolonged physical contact costs extra.',
location: 'Toledo, Ohio', price: 20, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: personal)
job8 = Job.create(name: 'Professional Mourner', description: 'I provide services such as dramatic crying, screaming and/ or passing out at any funeral or wake service. Special requests accepted.',
location: 'Miami, Florida', price: 65, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: personal)
job9 = Job.create(name: 'Personal Complementer', description: 'I am a personal Complementer who will follow you around and provide complements and emotional support for the entirety of the paid duration.',
location: 'Toledo, Ohio', price: 15, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: labor)
job10 = Job.create(name: 'Guinea pig whisperer', description: 'Does your guinea pig refuse to listen to you? Contact me now and I can solve that. I have been working with guinea pigs for over 15 years, and have had plenty of success dealing with disobedience.',
location: 'Miami, Florida', price: 55, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: animal)

puts "created #{Job.count} jobs"


puts "creating bookings"

booking1 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job1,
user: josh)

booking2 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job2,
user: max)

booking3 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job3,
user: karen)

booking4 = Booking.create(
date: Date.today,
status: 'pending',
rating: 4,
job: job4,
user: josh)


puts "created #{Booking.count} bookings"









