# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "lets go"
Ingredient.destroy_all
User.destroy_all
Recipe.destroy_all

20.times do
    Ingredient.create(name:Faker::Food.ingredient)
end

20.times do
    User.create(name:Faker::Games::Dota.hero, email:Faker::Appliance)
end

60.times do
    Recipe.create(name:Faker::Food.dish,content:Faker::Food.description,user_id:User.all.sample.id,ingredient_id:Ingredient.all.sample.id)
end

puts "I am done for dinner"
