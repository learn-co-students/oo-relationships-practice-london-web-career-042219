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

  def desserts #DONE return an array of dessert instances
    classes = Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def dessert_calories
    desserts.map {|dessert| dessert.calories}
  end

  def average_calories  #Ave. calories       
      dessert_calories.sum / desserts.length
  end

  def shopping_list #return a string of names for ingredients for bakery 
    ingredients.map {|ingredient| ingredient.name}.join(", ")
  end

end