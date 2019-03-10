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
{ name: 'Mountain', style: "fas fa-mountain mountain" },
{ name: 'Snow', style: "fas fa-snowflake" },
{ name: 'Road', style: "fas fa-bicycle" },
{ name: 'Water', style: "fas fa-water"},
{ name: 'Arial', style: "fas fa-wind"}])

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







puts "starting trips.."

adjectives = %w(breathtaking electrifying enchanting frantic gripping hair-raising sensational mind-blowing)
experiences = ['In west Philadelphia born and raised, on the playground was where I spent most of my days', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.']

20.times do
  act = Activity.all.sample
  destination = Faker::Address.country
  start_date = Faker::Date.between(Date.today, Date.today + 180)
  duration = rand(3..21)
  destination_adjective = adjectives.sample
  Trip.create!(
  title: "#{act.name} in #{destination}",
  destination: destination,
  description: "This is a #{duration}-day #{act.name.downcase} trip to the #{destination_adjective} #{destination}. If you love #{act.name.downcase} you'd be a ruddy idiot to miss it.",
  price: rand(200..1000),
   activity: act,
  group: Group.new,
  user: User.all.sample,
  start_date: start_date,
  end_date: (start_date + duration),
  organiser_exp: experiences.sample,
  visited_before: [true,false].sample,
  crew_exp: experiences.sample,
  crew_exp_required: [true,false].sample,
  max_crew_size: rand(2..12),
  photo: open("https://source.unsplash.com/800x450/?#{destination},#{act.name}"))
end



puts "Seed done"
