require 'faker'

Activity.destroy_all


puts 'starting seed...'

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


#seed activities
puts 'creating activities'


#seed activities

activities = Activity.create([
{ name: 'Hiking' },
{ name: 'Skiing' },
{ name: 'Snowboarding' },
{ name: 'Skiing' },
{ name: 'Cycling' },
{ name: 'Skiing' },
{ name: 'Climbing' },
{ name: 'Skiing' }])




puts 'Seed done'
