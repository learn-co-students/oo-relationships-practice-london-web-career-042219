require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sams = Bakery.new("Sams")
tims = Bakery.new("Tims")
johns = Bakery.new("Johns")

cake = Dessert.new("Cake", tims)
icecream = Dessert.new("Ice cream", tims)
lolly = Dessert.new("Lollypop", johns)
whipc = Dessert.new("Whipped cream", tims)

cream = Ingredient.new("Single Cream", icecream, 20)
choc = Ingredient.new("Dark Chocolate", cake, 50)
banana= Ingredient.new("Banana", icecream, 100)
flour = Ingredient.new("Flour", cake, 50)

Pry.start

