# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Board.destroy_all
Recipe.destroy_all
Brand.destroy_all
Category.destroy_all
NonDairyOption.destroy_all
BoardPin.destroy_all
RecipePin.destroy_all


puts "Seeding data 🌱 🌱 🌱"

puts "Creating users 🐮 🐮 🐮"

10.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Lorem.word + "@gmail.com", 
    phone_number: Faker::PhoneNumber.cell_phone, 
    address: Faker::Address.full_address, 
    username: Faker::Lorem.word, 
    password: Faker::Lorem.characters(number: 10), 
    bio: Faker::Lorem.sentence, 
    avatar: Faker::Avatar.image
    )
end

puts "Creating boards 💟 💟 💟"
20.times do
  Board.create(
    name: Faker::Lorem.word, 
    description: Faker::Lorem.sentence, 
    user_id: User.all.ids.sample
    )
end

puts "Creating recipes 📝 📝 📝"
20.times do
  Recipe.create(
    name: Faker::Lorem.word, 
    description: Faker::Lorem.sentence, 
    ingredients: Faker::Food.ingredient, 
    instructions: Faker::Food.description, 
    user_id: User.all.ids.sample
    )
end

puts "Creating brands 🛒 🛒 🛒"
50.times do
  Brand.create(
    name: Faker::Company.name
  )
end

puts "Creating categories 🥛 🧀 🥯"
10.times do
  Category.create(
    name: Faker::Food.ingredient
  )
end

puts "Creating non-dairy options 🍦 🍦 🍦"
50.times do
  NonDairyOption.create(
    name: Faker::Food.ingredient,
    description: Faker::Lorem.sentence, 
    allergens: Faker::Food.ingredient, 
    image: Faker::Avatar.image, 
    category_id: Category.all.ids.sample, 
    brand_id: Brand.all.ids.sample
  )
end

puts "Creating board pins 🧷 🧷 🧷"
25.times do
  BoardPin.create(
    non_dairy_option_id: NonDairyOption.all.ids.sample, 
    board_id: Board.all.ids.sample
  )
end

puts "Creating recipe pins 📌 📌 📌"
25.times do
  RecipePin.create(
    non_dairy_option_id: NonDairyOption.all.ids.sample, 
    recipe_id: Recipe.all.ids.sample
  )
end

puts "Data seeded 🌼 🌼 🌼"
