puts "Cleaning database"

require 'faker'

GroupMember.destroy_all
UserActivity.destroy_all
Activity.destroy_all
Trip.destroy_all
User.destroy_all
Group.destroy_all



puts 'starting seed...'

puts 'creating activities'


#seed activities

activities = Activity.create([
{ name: 'Hiking' },
{ name: 'Skiing' },
{ name: 'Snowboarding' },
{ name: 'Mountain Biking' },
{ name: 'Cycling' },
{ name: 'Whitewater Rafting' },
{ name: 'Climbing' },
{ name: 'Skydiving' },
{ name: 'Sailing' }])

puts "user activities seeded"

puts 'seeding users...'

locations = %w(Swindon Barrow-in-Furness Darlington Dewsbury Frampton Thamesmead Penge Haringey Littlehampton Salford Smethwick Cathays Totnes Leith Norwich Diss Taunton Gravesend Oldham Sunderland Southend-on-Sea Harlow Staines Belper Bridgend Omagh Sanquhar Wrexham)
greeting = %w(Hello Hi Hey)

50.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  dob = Faker::Date.between(65.years.ago, 20.years.ago)
  location = "#{locations.sample}, UK"
  User.create!(first_name: first_name, last_name: last_name, email: "#{first_name}.#{last_name}@gmail.com", password: "password", dob: dob, location: location, bio: "#{greeting.sample} my name's #{first_name}! I come from #{location}. My day-job is #{Faker::Job.seniority.downcase} #{Faker::Job.employment_type.downcase} #{Faker::Job.title.downcase} in #{Faker::Job.field.downcase} but my friends know my real passion is ADVENTURE.")
end

puts "seeding users completed - #{User.count} users in database"

puts "seeding user activities (1-4 per user)"

i = User.first.id

User.count.times do
  user = User.find(i)
  acts = Activity.all.sample(rand(1..4))
  acts.each { |act| UserActivity.create!(user: user, activity: act)}
  i += 1
end



users = User.all




puts "starting trips.."

20.times do
  act = Activity.all.sample
  destination = Faker::Address.city
  Trip.create!(
  title: "#{act.name} in #{destination}",
  destination: destination,
  description: Faker::Hipster.sentence,
  price: rand(400..900),
  activity: act,
  group: Group.new,
  user: users.sample
  )
end



puts "Seed done"
