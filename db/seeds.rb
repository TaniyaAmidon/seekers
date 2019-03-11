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


# user 1
arthur1 = User.new(first_name: "Arthur", last_name: "Littmann", location: "Dalston",
dob: Date.new(1992, 12, 8), bio: "I work in a coding school as a designer all week long and love to ski,
snowboard and bike, but my friends are always busy. I have some great ideas for trips that I would like to put into action",
email: "arthurl@yahoo.com", password: "password")

arthur1.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552313312/Screen_Shot_2019-03-11_at_14.08.11.png"
arthur1.save!

# user 2
kitty2 = User.new(first_name: "Kitty", last_name: "Mayo", location: "Pimlico",
dob: Date.new(1993, 12, 23), bio: "I have grown up adventuring in the UK and all over the world and I always want to experience new challenges. I have recently been hiking in Scotland and almost got blown away by Storm Freya - on to the next ADVENTURE!! Hoping to meet people who will join me, or find a trip that interests me.",
email: "kittym@gmail.com", password: "password")

kitty2.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552301652/fshasg9kcrijswyixakj.png"
kitty2.save!

# user 3
sophie3 = User.new(first_name: "Sophie", last_name: "Spratley", location: "Leeds",
dob: Date.new(1987, 7, 10), bio: "I am a Digital Project Manager and always go on sun filled holidays, but I am looking for something a little more exciting. I once climbed Machu Picchu and would now like to go sky diving, expand my horizons and all that",
email: "sophies@gmail.com", password: "password")

sophie3.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552314039/sophie_s_-_profile.jpg"
sophie3.save!

# user 4
ife4 = User.new(first_name: "Ife", last_name: "Odugbesan", location: "Bellingham",
dob: Date.new(1989, 01, 29), bio: "I work for a Digital Agency in East London, as a Designer/Developer and I never go on adventurous holidays. I am seeking likeminded people to travel with, who have experience with adventure holidays. I like hiking  ",
email: "ifeo@yahoo.com", password: "password")

ife4.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552312069/Screen_Shot_2019-03-11_at_13.47.25.png"
ife4.save!

# user 5
tanyia5 = User.new(first_name: "Taniya", last_name: "Amidon", location: "Manchester",
dob: Date.new(1987, 11, 19), bio: "I am a florist and in my spare time I like to horse ride and play board games. I used to be a nurse and I love to travel. I would love to find an adventure that I can go on and make some real life connections in the process",
email: "taniyaa@yahoo.com", password: "password")

tanyia5.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552314115/Screen_Shot_2019-03-11_at_14.21.22.png"
tanyia5.save!


# user 6
dan6 = User.new(first_name: "Dan", last_name: "Vernon", location: "Salford",
dob: Date.new(1988, 3, 4), bio: "I love design, photography and long walks on the Norfolk Broads, but I need to step out of my comfort zone and travel to some interesting places. I would like to try my hand at surfing and I love to cycle.",
email: "danv@gmail.com", password: "password")

dan6.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552314290/dan_v.jpg"
dan6.save!



# group = Group.create(name: "")


#Organising
#trip1

group1 = Group.new
group2 = Group.new
group3 = Group.new

trip1 = Trip.new(group: group1, user_id: arthur1.id, title: "Exhilerating week Skiing in the Alps", destination: "France", start_date: Date.new(2019, 8, 15),
  end_date: Date.new(2019, 8, 30), days: 15, activity: activities[1], description: "Great trip skiing going up and down mountains and there is lots of snow",
  organiser_exp: "Have been skiing many times before, I am also an experience snowboarder and can help anyone out who needs it.", visited_before: true,
  crew_exp: "People DO have to of been skiing before. Should be able to navigate red slopes plus", crew_exp_required: true,
  max_crew_size: 4, price_cents: 55000)

  trip1.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552299568/nvedstpzhx0hnj6qenx6.jpg"
  trip1.save!

#trip2
trip2 = Trip.create!(group: group2, user_id: kitty2.id, title: "Water rafting in Norway", destination: "Norway", start_date: Date.new(2019, 6, 14),
  end_date: Date.new(2019, 6, 27), days: 14, activity: activities[3], description: "Water rafting trip in the beautiful Nordic fjords near Bøkfjorden - everything included in the price!",
  organiser_exp: "I have been water rafting in many different locations all over the world, but Norway has alway been on my hit list. I am first aid trained", visited_before: false,
  crew_exp: "It would be great if some of the group members have experience, but it is not necessary", crew_exp_required: false,
  max_crew_size: 7, price_cents: 67000, photo: "")

  trip2.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552324784/photo-1530866495561-507c9faab2ed.jpg"
  trip2.save!

#trip3
trip3 = Trip.create!(group: group3, user_id: sophie3.id, title: "Sky Diving in New Zealand", destination: "New Zealand", start_date: Date.new(2019, 7, 1),
  end_date: Date.new(2019, 7, 18), days: 18, activity: activities[4], description: "Sky Diving in stunning New Zealand - nature and adrenaline!",
  organiser_exp: "I have been bungee jumping before and loved the adrenaline rush, have not sky dived before", visited_before: false,
  crew_exp: "People should have experience of being at heights, as it can be scary up there. But if you beleive you are up for the challenge we might make an exception", crew_exp_required: true,
  max_crew_size: 6, price_cents: 78000)

  trip3.remote_photo_url = "https://res.cloudinary.com/sophiespratley/image/upload/v1552324963/photo-1529573603507-70ad30917905.jpg"
  trip3.save!



#joining

#trip4
# trip4 = Trip.create!(group: group1, user_id: ife4.id, title: "Cyling in the hills", destination: "Colorado", start_date: Date.new(2019, 7, 10),
#   end_date: Date.new(2019, 7, 20), days: 10, activity: activities[1], description: "Great trip skiing going up and down mountains and there is lots of snow",
#   organiser_exp: "Have been skiing many times before Have been skiing many times before Have been skiing many times before", visited_before: true,
#   crew_exp: "People DO have to of been skiing before People DO have to of been skiing before People DO have to of been skiing before", crew_exp_required: true,
#   max_crew_size: 6, price_cents: 50, photo: "")

# #trip5
# trip5 = Trip.create!(group: group2, user_id: tanyia5.id, title: "Exhilerating week Skiing in the Alps", destination: "France", start_date: Date.new(2019, 12, 1),
#   end_date: Date.new(2019, 12, 12), days: 12, activity: activities[1], description: "Great trip skiing going up and down mountains and there is lots of snow",
#   organiser_exp: "Have been skiing many times before Have been skiing many times before Have been skiing many times before", visited_before: true,
#   crew_exp: "People DO have to of been skiing before People DO have to of been skiing before People DO have to of been skiing before", crew_exp_required: true,
#   max_crew_size: 6, price_cents: 50, photo: "")

# #trip6
# trip6 = Trip.create!(group: group3, user_id: dan6.id, title: "Exhilerating week Skiing in the Alps", destination: "France", start_date: Date.new(2019, 8, 15),
#   end_date: Date.new(2019, 8, 30), days: 15, activity: activities[1], description: "Great trip skiing going up and down mountains and there is lots of snow",
#   organiser_exp: "Have been skiing many times before Have been skiing many times before Have been skiing many times before", visited_before: true,
#   crew_exp: "People DO have to of been skiing before People DO have to of been skiing before People DO have to of been skiing before", crew_exp_required: true,
#   max_crew_size: 6, price_cents: 50, photo: "")


GroupMember.create(group: group1 , user: ife4, status: "accepted")
GroupMember.create(group: group2, user: tanyia5, status: "accepted")
GroupMember.create(group: group3, user: dan6, status: "accepted")


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



puts "starting trips.."

adjectives = %w(breathtaking electrifying enchanting frantic gripping hair-raising sensational mind-blowing)
experiences = ['In west Philadelphia born and raised, on the playground was where I spent most of my days', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.']
three_users = [arthur1, kitty2, sophie3]

20.times do
  act = Activity.all.sample
  destination = Faker::Address.country
  start_date = Faker::Date.between(Date.today, Date.today + 180)
  duration = rand(3..21)
  destination_adjective = adjectives.sample
  Trip.create!(
  title: "#{act.name} in #{destination}",
  destination: destination,
  description: "This is a #{duration}-day #{act.name.downcase} trip to the #{destination_adjective} #{destination}. If you love #{act.name.downcase} contact organiser to apply.",
  price_cents: rand(2000..9000),
  activity: act,
  group: Group.new,
  user: three_users.sample,
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
