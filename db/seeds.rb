Activity.destroy_all

puts "starting seed.."

#seed activities
puts 'creating activities'

activities = Activity.create([{ name: 'Hiking' }, { name: 'Skiing' }, { name: 'Snowboarding' },{ name: 'Skiing' }, { name: 'Cycling' }, { name: 'Skiing' }, { name: 'Climbing' }, { name: 'Skiing' }])


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed done"
