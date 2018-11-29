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
name: 'Educational', photo: 'https://banner2.kisspng.com/20180421/bcq/kisspng-computer-icons-education-computer-software-pennsyl-5adbb67ad66845.1024410715243485388782.jpg')
household = Category.create(name: 'Household', photo: 'https://png2.kisspng.com/20180413/uew/kisspng-interior-design-services-computer-icons-cabin-5ad149c3d2dbd4.5952728015236653478637.png')
animal = Category.create(name: 'Animal Care', photo: 'https://vignette.wikia.nocookie.net/animal-jam-clans-1/images/0/0b/Medicine_catttttttttt.png/revision/latest?cb=20171010173044')
video = Category.create(name: 'Video Games', photo: 'https://static1.squarespace.com/static/54501851e4b07d7d1dcd61e3/t/54aed438e4b0b0a87fa48c28/1420743737553/systems.jpg')
landscape = Category.create(name: 'Landscaping', photo: 'https://cdn3.iconfinder.com/data/icons/gardening-icons/512/Wheel_Barrow-512.png')
food = Category.create(name: 'Food', photo: 'https://image.freepik.com/vetores-gratis/conjunto-de-comida-de-mao-desenhada-e-lanche-no-fundo-do-quadro-negro_44769-123.jpg')
auto = Category.create(name: 'Automotive', photo: 'http://www.mantelzorg-tilburg.nl/wp-content/uploads/2015/06/auto-3.jpg')
labor = Category.create(name: 'General Labor', photo: 'http://www.votenima.com/wp-content/uploads/2018/07/noun_labor_1709573_000000-300x300.png')
personal = Category.create(name: 'Personal', photo: 'http://www.votenima.com/wp-content/uploads/2018/07/noun_labor_1709573_000000-300x300.png')

puts "created #{Category.count} categories"


puts "Creating jobs"

job1 = Job.create(name: 'Japanese Tutor', description: 'I am a native japanese speaker who has taught for over 10 years in the greater Toledo Area.',
location: 'Toledo, Ohio', price: 20, user: josh, photo: 'http://eigo-jouhou.com/wp-content/uploads/2018/04/japan_fujiyoshida_mt._fuji_with_chureito_pagoda_in_autumn.jpg', category: animal)
job2 = Job.create(name: 'Bug Exterminator', description: 'I am a complete expert in the bug extermination field, and I provide excellent service.',
location: 'Miami, Florida', price: 35, user: karen, photo: 'https://media.indiedb.com/cache/images/downloads/1/134/133211/thumb_620x2000/SERVICES-IN-MELBOURNE-AND-FRANKS.png', category: household)
job3 = Job.create(name: 'Fence Painter', description: 'I have painted fences for over 20 years, and take complete pride in my ability and efficency',
location: 'Toledo, Ohio', price: 15, user: max, photo: 'https://qph.fs.quoracdn.net/main-qimg-2dcdcdc613190b75852f29107bd1f864.webp', category: landscape)
job4 = Job.create(name: 'Item Locator', description: 'Have you ever lost an item such as a ring, or your favorite sock in your house? I am the perfect man for the job, and will find any and all lost items.',
location: 'Miami, Florida', price: 11, user: josh, photo: 'https://cdn.aarp.net/content/dam/aarp/health/healthy-living/2017/02/1140-find-lost-items-aarp.imgcache.rev6157de2133207f2fcca2f2f689fcfcfc.jpg', category: household)
job5 = Job.create(name: 'Dog Selfie Taker', description: 'I am a professional photographer that specializes in takng selfies with your dog. Any breed welcome.',
location: 'Toledo, Ohio', price: 20, user: karen, photo: 'https://i.imgur.com/dTfKk8C.jpg', category: personal)
job6 = Job.create(name: 'Fortnite Guru', description: 'Is your child awful at fornite? If so, I am the person for you. I am an expert in the video game field and I guarantee that I will improve the skill of your kid dramatically.',
location: 'Miami, Florida', price: 25, user: max, photo: 'https://www.iplusone.com/media/images/fortnite.png', category: video)
job7 = Job.create(name: 'Fake Boyfriend', description: 'I provide the service of a male companion to accompany you to an event such as a wedding or a banquet. Prolonged physical contact costs extra.',
location: 'Toledo, Ohio', price: 20, user: josh, photo: 'https://www.karenwillisholmes.com/images/uploads/images/4z1a4161_600.jpg', category: personal)
job8 = Job.create(name: 'Professional Mourner', description: 'I provide services such as dramatic crying, screaming and/ or passing out at any funeral or wake service. Special requests accepted.',
location: 'Miami, Florida', price: 65, user: karen, photo: 'http://www.informationng.com/wp-content/uploads/2017/09/crying-birth-1-1.jpg', category: personal)
job9 = Job.create(name: 'Personal Complementer', description: 'I am a personal Complementer who will follow you around and provide complements and emotional support for the entirety of the paid duration.',
location: 'Toledo, Ohio', price: 15, user: max, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq-IYyocm1jHqrDUxJeJ3kB-g3laBGnvAMKHsRI5ZKvpx91qdp', category: labor)
job10 = Job.create(name: 'Guinea Pig Whisperer', description: 'Does your guinea pig refuse to listen to you? Contact me now and I can solve that. I have been working with guinea pigs for over 15 years, and have had plenty of success dealing with disobedience.',
location: 'Miami, Florida', price: 55, user: josh, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqA0vphY6CHfNwKf40fJbbkuSetRpOrx04SkQhGVsV0FE-L1Nu', category: animal)

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









