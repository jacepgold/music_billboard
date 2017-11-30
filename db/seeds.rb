# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# title: Faker::ChuckNorris.fact


# puts "10 'Learn to Fly' Songs were Created\n"
# puts '----------'

# 2.times do 
#   Billboard.create(
#     title: Faker::Name.name
#   )
# end

Billboard.create(title: 'Billboard Top Whatever')
Billboard.create(title: "Jace's Billboard")
Song.create(title: "Jace's Rockin Song!")
30.times do
  Artist.create(
    name: Faker::RockBand.name
  )
  Song.create(
    title: Faker::RockBand.name
  )
end