class Bakery

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    Dessert.all.map {|dessert| dessert.ingredients }.flatten
  end

  def average_calories
    desserts.map {|dessert| dessert.calories }.sum / desserts.length
  end

  def shopping_list
    ingredients.map {|ingredient| ingredient.name}.join(", ")
  end

  #return an array with all the ingredients from a Bakery
  # def desserts
  #   Dessert.all.select {|dessert| dessert.bakery == self}
  # end
  #
  # def ingredients
  #   self.desserts.map {|dessert| dessert.ingredients}.flatten
  # end


end
