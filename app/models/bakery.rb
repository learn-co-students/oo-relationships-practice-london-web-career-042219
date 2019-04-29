class Bakery
  @@all = []
  attr_reader :name

 def initialize(name)
   @@all << self
   @name = name
 end

 def self.all
   @@all
 end

 def desserts
   Dessert.all.select{|dessert| dessert.bakery == self}
 end

 def ingredients
   ingredient_array = []
   desserts.each{|dessert| ingredient_array += dessert.ingredients}
   ingredient_array
 end

 def average_calories
   calories = 0
   ingredients.each {|ingredient| calories += ingredient.calories}
   calories / ingredients.length
 end


 def shopping_list
   ingredients.map{|ingredient| ingredient.name}.join(", ")
 end
end
