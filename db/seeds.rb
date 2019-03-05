puts "CLeaning database"


Activity.destroy_all

#seed activities
activities = Activity.create([{ name: 'Hiking' }, { name: 'Skiing' }, { name: 'Snowboarding' },{ name: 'Skiing' }, { name: 'Cycling' }, { name: 'Skiing' }, { name: 'Climbing' }, { name: 'Skiing' }])

puts "SEEDED"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
