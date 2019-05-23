require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lidl = Bakery.new("lidl")
greggs = Bakery.new("greggs")
waitrose = Bakery.new("waitrose")
gails = Bakery.new("gails")

cheesecake = Dessert.new("cheesecake",lidl)
chocolate_cake = Dessert.new("chocolate_cake",waitrose)
donut = Dessert.new("donut",waitrose)

flour = Ingredient.new("flour", chocolate_cake, 50)
chocolate = Ingredient.new("chocolate", chocolate_cake, 200)
salt = Ingredient.new("salt", chocolate_cake, 10)
sugar = Ingredient.new("sugar", chocolate_cake, 400)

graham = Ingredient.new("graham", cheesecake, 20)
cheese = Ingredient.new("cheese", cheesecake, 150)
salt2 = Ingredient.new("salt", cheesecake, 10)
sugar2 = Ingredient.new("sugar", cheesecake, 400)

flour2 = Ingredient.new("flour", donut, 100)
cream = Ingredient.new("cream", donut, 350)
salt3 = Ingredient.new("salt", donut, 50)
sugar3 = Ingredient.new("sugar", donut, 400)

binding.pry

0