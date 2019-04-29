class Bakery
  @@all =[]
  attr_reader :name

  def initialize (name)
    @name =name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients #DONE
    Ingredient.all.select {|ingred| ingred.dessert.bakery == self}
  end

  def desserts #DONE return an array of desserts the bakery makes
    classes = Dessert.all.select {|dessert| dessert.bakery == self}
    classes.map {|x| x.name}
  end

  def average_calories  #Ave. calories  
      cals = ingredients.map {|ingred| ingred.calorie}
      ave = cals.sum / cals.length 
  end

  def shopping_list #return a string of names for ingredients for bakery 
    ingredients.map {|ingredient| ingredient.name}.join(", ")
  end

end