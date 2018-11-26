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

puts "creating users"
User.destroy_all

josh = User.create({email: 'jconduah729@gmail.com', password: '123456'})
karen = User.create({email: 'kpiretti56@gmail.com', password: '123456'})
max = User.create({email: 'mjohnson43@gmail.com', password: '123456'})
# {email: 'maxman89@gmail.com', password: '123456'},
# {email: 'jmohammed19@gmail.com', password: '123456'},
# {email: 'francishthometz@gmail.com', password: '123456'},
# ,
# {email: 'mkyoon713@gmail.com', password: '123456'},
# {email: 'pperon914@gmail.com', password: '123456'},
# {email: 'mmorataya70@gmail.com', password: '123456'},
# {email: 'hjennett67@gmail.com', password: '123456'}

# ])
puts "created #{User.count} users"

puts "creating categories"



educational = Category.create(
name: 'Educational', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
household = Category.create(name: 'Household', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
animal = Category.create(name: 'Animal Care', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w')
# {name: 'Video Games', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'},
# {name: 'Landscaping', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'},
# {name: 'Food', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'},
# {name: 'Automotive', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'},
# {name: 'General Labor', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'},
# {name: 'Personal', photo: 'https://static1.squarespace.com/static/55f6cb4ee4b02b9a7bded660/t/55fc2e89e4b08422c884ccbc/1442590347312/JOB.jpg?format=1000w'}])

puts "created #{Category.count} categories"


p josh

puts "Creating jobs"

job1 = Job.create(name: 'Japanese Tutor', description: 'I am a native japanese speaker who has taught for over 10 years in the Toledo Area.',
location: 'Toledo, Ohio', price: 20, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category: animal)

p job1


# jobs = Job.create([{
# name: 'Japanese Tutor', description: 'I am a native japanese speaker who has taught for over 10 years in the Toledo Area.',
# location: 'Toledo, Ohio', price: 20, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Bug exterminator', description: 'I am a complete expert in the bug extermination field, and I provide excelent service.',
# location: 'Cleveland, Ohio', price: 35, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Fence Painter', description: 'I have painted fences for over 20 years, and take complete pride in my ability and efficency',
# location: 'Detroit, Michigan', price: 15, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Item locator', description: 'Have you ever lost an item such as a ring, or your favorite sock in your house? I am the perfect man for the job, and will find any and all lost items.',
# location: 'Las Vegas, Nevada', price: 11, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Dog selfie taker', description: 'I am a professional photographer that specializes in takng selfies with your dog. Any size welcome.',
# location: 'Kyoto, Japan', price: 20, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Fortnite guru', description: 'Is your child awful at fornite? If so, I am the person for you. I am an expert in the video game field and I guarantee that I will improve the skill of your kid dramatically.',
# location: 'Baton Rouge, Louisiana', price: 25, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Fake Boyfriend', description: 'I provide the service of a male companion to accompany you to an event such as a wedding or a banquet. Prolonged physical contact costs extra.',
# location: 'Burlington, Vermont', price: 20, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Professional Mourner', description: 'I provide services such as dramatic crying, screaming and/ or passing out at any funeral or wake service. Special requests accepted.',
# location: 'Miami, Florida', price: 65, user: karen, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Personal Complementer', description: 'I am a personal Complementer who will follow you around and provide complements and emotional support for the entirety of the paid duration.',
# location: 'Stamford, Connecticut', price: 15, user: max, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1},
# {name: 'Guinea pig whisperer', description: 'Does your guinea pig refuse to listen to you? Contact me now and I can solve that. I have been working with guinea pigs for over 15 years, and have had plenty of success dealing with disobedience.',
# location: 'Perth, Australia', price: 55, user: josh, photo: 'https://remotive.io/wp-content/uploads/2016/12/job-search-remotive-home.png', category_id: 1}])

puts "created #{Job.count} jobs"


puts "creating bookings"



bookings = Booking.new(
date: Date.today,
status: 'pending',
rating: 4,
job: job1,
user: josh)

bookings.save!
# },
# {
# date: '12/14/18',
# status: 'pending',
# rating: 5,
# job: job,
# user: max
# },
# {
# date: '12/15/18',
# status: 'pending',
# rating: 3,
# job: job,
# user: karen
# },
# {
# date: '12/23/18',
# status: 'pending',
# rating: 4,
# job: job,
# user: josh
# }])

puts "created #{Booking.count} bookings"









