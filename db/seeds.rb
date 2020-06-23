# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'
require 'json'
require 'faker'
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all
User.destroy_all

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

3.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "password"
  user.save

  file = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1586&q=80')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: "#{cocktail.name}.jpg", content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://images.unsplash.com/photo-1550426735-c33c7ce414ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2443&q=80')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: "#{cocktail.name}.jpg", content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: "#{cocktail.name}.jpg", content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://images.unsplash.com/photo-1536599424071-0b215a388ba7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2304&q=80')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: "#{cocktail.name}.jpg", content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: "#{cocktail.name}.jpg", content_type: 'image/jpg')
  cocktail.save

  puts cocktail.name
end

