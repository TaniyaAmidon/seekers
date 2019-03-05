Activity.destroy_all
require 'faker'


puts "starting seed.."

#seed activities
puts 'creating activities'


#seed activities

activities = Activity.create([{ name: 'Hiking' }, { name: 'Skiing' }, { name: 'Snowboarding' },{ name: 'Skiing' }, { name: 'Cycling' }, { name: 'Skiing' }, { name: 'Climbing' }, { name: 'Skiing' }])


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed done"

puts "starting seed.."

20.times do
  Trip.create!(
  destination: Faker::Address.city,
  description: Faker::Hipster.sentence,
  price: (400..900).to_a.sample,
  user_id: User.sample
  )
end

puts "Seed done"


# photo: open("https://loremflickr.com/600/800/person")
