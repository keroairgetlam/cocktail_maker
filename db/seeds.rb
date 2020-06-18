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


1.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "password"
  user.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499495/cocktail01_tz1iwt.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail01_tz1iwt.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499497/cocktail02_flpwjr.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail02_flpwjr.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499501/cocktail03_vm7nl7.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail03_vm7nl7.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499506/cocktail04_xntlmd.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail04_xntlmd.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499507/cocktail05_mcn1mo.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail05_mcn1mo.jpg', content_type: 'image/jpg')
  cocktail.save

  puts cocktail.name
end

1.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "password"
  user.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499512/cocktail06_iyqgy4.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail06_iyqgy4.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499516/cocktail07_kcqiw2.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail07_kcqiw2.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499517/cocktail08_jrxcje.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail08_jrxcje.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499521/cocktail09_bkvcrk.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail09_bkvcrk.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499528/cocktail10_g3mbo8.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail10_g3mbo8.jpg', content_type: 'image/jpg')
  cocktail.save

  puts cocktail.name
end

1.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "password"
  user.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499530/cocktail11_kdrtvx.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail11_kdrtvx.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499535/cocktail12_rbuzgj.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail12_rbuzgj.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499536/cocktail13_ivhvzs.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail13_ivhvzs.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499538/cocktail14_v9fthi.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail14_v9fthi.jpg', content_type: 'image/jpg')
  cocktail.save

  file = URI.open('https://res.cloudinary.com/airgetlam/image/upload/v1592499539/cocktail15_na1u3l.jpg')
  cocktail = Cocktail.new(name: Faker::FunnyName.name, user: user)
  cocktail.photo.attach(io: file, filename: 'cocktail15_na1u3l.jpg', content_type: 'image/jpg')
  cocktail.save

  puts cocktail.name
end
