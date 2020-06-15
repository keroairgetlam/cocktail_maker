# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# require 'json'
# Dose.destroy_all
# Ingredient.destroy_all
# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# repo = open(url).read()
# ending = JSON.parse(repo)
# e = ending.flatten[1]
# e.each do |item|
#   cocktail = Ingredient.create!(name: item['strIngredient1'])
# end
require 'faker'
Cocktail.destroy_all
User.destroy_all

3.times do
  user=User.new
  user.email=Faker::Internet.email
  user.password="password"
  user.save!
  10.times do
    cocktail=Cocktail.new
    cocktail.name=Faker::FunnyName.name
    cocktail.user=user
    cocktail.save!
    puts cocktail.name
  end
end
