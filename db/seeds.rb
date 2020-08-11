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

3.times do
    User.create(name:Faker::Games::Dota.hero, email:Faker::Appliance, allergic_to:"")
end

2.times do
    User.create(name:Faker::Games::Dota.hero, email:Faker::Appliance, allergic_to:"peanut")
end

30.times do
    Recipe.create(name:Faker::Food.dish,content:Faker::Food.description,user_id:User.all.sample.id)
end

60.times do
    Ingredient.create(name:Faker::Food.ingredient, recipe_id:Recipe.all.sample.id)
end

20.times do
    Ingredient.create(name:"peanut", recipe_id:Recipe.all.sample.id)
end

15.times do
    Ingredient.create(name:"tomato", recipe_id:Recipe.all.sample.id)
end

p User.count
p Recipe.count
p Ingredient.count

puts "I am done for dinner"
