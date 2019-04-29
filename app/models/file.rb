# create files for your ruby classes in this directory
require_relative "./bakery.rb"
require_relative "./dessert.rb"
require_relative "./ingredient.rb"
require "pry"

rowes = Bakery.new("rowes")
warrens = Bakery.new("warrens")

cake = Dessert.new("cake", rowes)

flour = Ingredient.new("flour", cake, 200)
chocolate = Ingredient.new("chocolate", cake, 1000)

binding.pry
""
