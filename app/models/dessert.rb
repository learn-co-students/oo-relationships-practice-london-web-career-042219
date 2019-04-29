class Dessert
  @@all = []

  attr_reader :bakery, :name
  
  def initialize(name, bakery)
    @@all << self
    @name = name
    @bakery = bakery
  end

  def ingredients
    Ingredient.all.select{|ingredient| ingredient.dessert == self}
  end

  def calories
    total_calories = 0
    ingredients.each {|ingredient| total_calories += calories}
    total_calories
  end

  def self.all
    @@all
  end
end
