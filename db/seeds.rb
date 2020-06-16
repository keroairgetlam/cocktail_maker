# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'
require 'json'
Dose.destroy_all
Ingredient.destroy_all

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# repo = open(url).read()
# ending = JSON.parse(repo)
# e = ending.flatten[1]
# e.each do |item|
#   cocktail = Ingredient.create!(name: item['strIngredient1'])
# end

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

require 'faker'
Cocktail.destroy_all
User.destroy_all

3.times do |indexuser|
  user=User.new
  user.email=Faker::Internet.email
  user.password="password"
  user.save
  10.times do |indexcocktail|
    cocktail=Cocktail.new
    cocktail.name=Faker::FunnyName.name
    cocktail.user=user
    index=indexuser*10+indexcocktail+1
    if index<10
      index="0"+index.to_s
    end
    cocktail.photo="cocktail#{index}.jpg"
    cocktail.save
    puts cocktail.name
  end
end
