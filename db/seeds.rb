# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts '----------'
# foo = Artist.create(name: 'Foo Fighters')
# puts "Artist Successfully Created - Foo Fighters\n"
# Artist.create(name: 'Mark-Anthony')
# puts "Artist Successfully Created - Mark Anthony\n"

# puts '----------'
# Billboard.create(title: 'Billboard', rank: 20)
# puts "Billboard Successfully Created - Default Rank = 20\n"

# puts '----------'
30.times do
  Song.create(
    title: Faker::ChuckNorris.fact,
    # billboard_id: Faker::Number.between(0, 30)
  )
end
# puts "10 'Learn to Fly' Songs were Created\n"
# puts '----------'


30.times do
  Artist.create(
    name: Faker::RockBand.name
  )
end