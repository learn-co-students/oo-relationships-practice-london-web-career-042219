require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'


small = Bakery.new("Small")
medium = Bakery.new("Medium")
large = Bakery.new("Large")

pie = Dessert.new("Pie", small)
donut = Dessert.new("Donut", medium)
cheesecake = Dessert.new("Cheesecake", large)
cookie = Dessert.new("Cookie", large)

flour = Ingredient.new("Flour", 100, pie)
milk = Ingredient.new("Milk", 50, cheesecake)
chocolate = Ingredient.new("Chocolate", 200, cookie)
chocolate_chips = Ingredient.new("Chocolate Chips", 200, cookie)
sugar = Ingredient.new("Sugar", 250, donut)


binding.pry
"lalal"
