# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



10.times do
  user = User.create!(
  	first_name: Faker::Name.first_name, 
  	last_name: Faker::Name.last_name, 
  	description: Faker::Lorem.sentence, 
  	email: "#{Faker::Name.first_name}@yopmail.com"
  	)
end
puts "Ok 10 users ont été créés"


10.times do
  event = Event.create!(start_date: Faker::Date.forward(30) , 
  	title: Faker::Esport.event, 
  	duration: rand(1..20), 
  	description: Faker::Lorem.sentence, 
  	price:rand(1..1000), 
  	location: Faker::Address.city, 
  	admin: User.all.sample
  	)
end
puts "Ok 10 events ont été créés"

10.times do
  attendance = Attendance.create!(strip_customer_id: rand(20000..99000) ,
   user: User.all.sample , 
   event: Event.all.sample)
end
