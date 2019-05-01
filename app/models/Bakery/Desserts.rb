class Dessert

  @@all = []

  attr_accessor :name, :bakery

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
     Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

  def calories
    ingredients.map {|ingredient| ingredient.calories}.sum
  end
  #
  def bakery
     Ingredient.all.find {|bakery| bakery.dessert == self}
  end

  # def calories
  #   total_calories = Ingredient.all.select {|ingredient| ingredient.calories == self}
  # end
  # def ingredients
  #   Ingredient.by_dessert(self).map {|ingredient| ingredient.name}
  # end
  #
  # def dessert_calories
  #   Ingredient.by_dessert(self).sum { |ingredient| ingredient.calories}
  # end
  #
  # def dessert_bakery
  #   Ingredient.by_dessert(self).find { |ingredient| ingredient.bakery}
  # end
  #

end
