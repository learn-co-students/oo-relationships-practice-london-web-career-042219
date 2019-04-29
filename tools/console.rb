require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

pauls = Bakery.new
pret = Bakery.new
costa = Bakery.new

carrot = Ingredient.new
chocolate = Ingredient.new
chocolate_sprinkles = Ingredient.new
egg = Ingredient.new

carrot.calories = 7
chocolate.calories = 100
chocolate_sprinkles.calories = 10
egg.calories = 70

brownie = Dessert.new
cookie = Dessert.new
carrotcake = Dessert.new

brownie.ingredients = [egg, chocolate]
carrotcake.ingredients = [carrot, egg]
cookie.ingredients = [egg, chocolate, chocolate_sprinkles]

costa.desserts = [carrotcake, cookie]
pauls.desserts = [brownie, cookie]


Pry.start

"Hi"
