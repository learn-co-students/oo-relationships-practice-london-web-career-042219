

class Bakery


attr_reader :bakery

@@all = []

  def initialize(bakery)
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts #DONE
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients #can I do this an easier way?
    Ingredient.all.select {|ingredient| ingredient.dessert.bakery}
  end

  def average_calories
    total_calories = ingredients.map {|ingredient| ingredient.calories}
    total_calories.sum / total_calories.length
  end

  def shopping_list
    list = ingredients.map {|ingredient| ingredient.name}
    list.join(", ") #split and join with slice but double check what they want.
  end


end
