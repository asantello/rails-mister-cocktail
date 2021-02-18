# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

parsed_ingredients = JSON.parse(open(url).read)

ingredients = []

parsed_ingredients.first[1].map do |parsed_ingredient|
  ingredients << parsed_ingredient["strIngredient1"]
end

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end
