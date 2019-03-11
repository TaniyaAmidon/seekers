puts "Cleaning database"

require 'faker'

GroupMember.destroy_all
UserActivity.destroy_all
Activity.destroy_all
Trip.destroy_all
User.destroy_all
Group.destroy_all

# seed activities

activities = Activity.create([
{ name: 'Hiking', style: "fas fa-mountain mountain" },
{ name: 'Skiing', style: "fas fa-snowflake" },
{ name: 'Cycling', style: "fas fa-bicycle" },
{ name: 'Water rafting', style: "fas fa-water"},
{ name: 'Sky diving', style: "fas fa-wind"}])

puts "user activities seeded"


arthur = User.new(first_name: "Arthur", last_name: "Littmann", location: "Dalston",
dob: Date.new(1992, 12, 8), bio: "I work in a coding school as a designer all week long and love to ski,
snowboard and bike, but my friends are always busy. I have some great ideas for trips that I would like to put into action",
email: "arthurl@yahoo.com", password: "password")

arthur.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552313312/Screen_Shot_2019-03-11_at_14.08.11.png"
arthur.save!

ife = User.new(first_name: "Ife", last_name: "Odugbesan", location: "Bellingham",
dob: Date.new(1989, 01, 29), bio: "I work for a Digital Agency in East London, as a Designer/Developer and I never go on adventurous holidays. I am seeking likeminded people to travel with, who have experience with adventure holidays. I like hiking  ",
email: "ifeo@yahoo.com", password: "password")

ife.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552312069/Screen_Shot_2019-03-11_at_13.47.25.png"
ife.save!

tania = User.new(first_name: "Taniya", last_name: "Amidon", location: "Manchester",
dob: Date.new(1987, 11, 19), bio: "I am a florist and in my spare time I like to horse ride and play board games. I used to be a nurse and I love to travel. I would love to find an adventure that I can go on and make some real life connections in the process",
email: "taniyaa@yahoo.com", password: "password")


kitty = User.new(first_name: "Kitty", last_name: "Mayo", location: "Pimlico",
dob: Date.new(1993, 12, 23), bio: "I have grown up adventuring in the UK and all over the world and I always want to experience new challenges. I have recently been hiking in Scotland and almost got blown away by Storm Freya - on to the next ADVENTURE!! Hoping to meet people who will join me, or find a trip that interests me.",
email: "kittym@gmail.com", password: "password")

kitty.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552301652/fshasg9kcrijswyixakj.png"
kitty.save!

dan = User.new(first_name: "Dan", last_name: "Vernon", location: "",
dob: Date.new(1988, 3, 4), bio: "",
email: "danv@gmail.com", password: "password")

dan.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552301652/fshasg9kcrijswyixakj.png"
dan.save!

sophie = User.new(first_name: "Sophie", last_name: "Spratley", location: "Leeds",
dob: Date.new(1987, 7, 10), bio: "I am a Digital Project Manager and always go on sun filled holidays, but I am looking for something a little more exciting. I once climbed Macchu Pichhu and would like to go hiking again, expand my horizons and all ",
email: "sophies@gmail.com", password: "password")

sophie.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552301652/fshasg9kcrijswyixakj.png"
sophie.save!

# group = Group.create(name: "")

# GroupMember.create(group: group, user: arthur)


trip = Trip.create!(group: Group.new, user_id: arthur.id, title: "Exhilerating week Skiing in the Alps", destination: "France", start_date: Date.new(2019, 8, 15),
  end_date: Date.new(2019, 8, 30), days: 15, activity: activities[1], description: "Great trip skiing going up and down mountains and there is lots of snow",
  organiser_exp: "Have been skiing many times before Have been skiing many times before Have been skiing many times before", visited_before: true,
  crew_exp: "People DO have to of been skiing before People DO have to of been skiing before People DO have to of been skiing before", crew_exp_required: true,
  max_crew_size: 6, price_cents: 50, photo: "")





# puts 'starting seed...'

# puts 'creating activities'




# puts 'seeding users...'

# locations = %w(Swindon Barrow-in-Furness Darlington Dewsbury Frampton Thamesmead Penge Haringey Littlehampton Salford Smethwick Cathays Totnes Leith Norwich Diss Taunton Gravesend Oldham Sunderland Southend-on-Sea Harlow Staines Belper Bridgend Omagh Sanquhar Wrexham)
# greeting = %w(Hello Hi Hey)

# 50.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   dob = Faker::Date.between(65.years.ago, 20.years.ago)
#   location = "#{locations.sample}, UK"
#   User.create!(first_name: first_name, last_name: last_name, email: "#{first_name}.#{last_name}@gmail.com", password: "password", dob: dob, location: location, bio: "#{greeting.sample} my name's #{first_name}! I come from #{location}. My day-job is #{Faker::Job.seniority.downcase} #{Faker::Job.employment_type.downcase} #{Faker::Job.title.downcase} in #{Faker::Job.field.downcase} but my friends know my real passion is ADVENTURE.")
# end

# puts "seeding users completed - #{User.count} users in database"

# puts "seeding user activities (1-4 per user)"

# i = User.first.id

# User.count.times do
#   user = User.find(i)
#   acts = Activity.all.sample(rand(1..4))
#   acts.each { |act| UserActivity.create!(user: user, activity: act)}
#   i += 1
# end



# puts "starting trips.."

# adjectives = %w(breathtaking electrifying enchanting frantic gripping hair-raising sensational mind-blowing)
# experiences = ['In west Philadelphia born and raised, on the playground was where I spent most of my days', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.']

# 20.times do
#   act = Activity.all.sample
#   destination = Faker::Address.country
#   start_date = Faker::Date.between(Date.today, Date.today + 180)
#   duration = rand(3..21)
#   destination_adjective = adjectives.sample
#   Trip.create!(
#   title: "#{act.name} in #{destination}",
#   destination: destination,
#   description: "This is a #{duration}-day #{act.name.downcase} trip to the #{destination_adjective} #{destination}. If you love #{act.name.downcase} contact organiser to apply.",
#   price: "#{£}rand(200..1000)",
#    activity: act,
#   group: Group.new,
#   user: User.all.sample,
#   start_date: start_date,
#   end_date: (start_date + duration),
#   organiser_exp: experiences.sample,
#   visited_before: [true,false].sample,
#   crew_exp: experiences.sample,
#   crew_exp_required: [true,false].sample,
#   max_crew_size: rand(2..12),
#   photo: open("https://source.unsplash.com/800x450/?#{destination},#{act.name}"))
# end



# puts "Seed done"
