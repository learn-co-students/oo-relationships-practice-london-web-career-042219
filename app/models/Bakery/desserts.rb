class Dessert

  @@all = []

  attr_reader :d_name, :bakery

  def initialize(d_name, bakery)
    @d_name = d_name
    @bakery = bakery
    @@all << self
  end

  def ingredients
    # return an array of ingredients for this dessert
    Ingredient.all.select{|info| info.dessert == self}
    ### SOLUTION ###
    # As Above
  end

  def ingredients_name
    ingredients.map{|info| info.i_name}
  end

  def bakerys
    # return the bakery object for said dessert
    Dessert.all.select{|info| info == self}
    ### SOLUTION ###
  end

  def bakerys_name
    self.bakerys.map{|info| info.bakery.b_name}
  end

  def calories
    # return a number totalling all the calories for all ingredients in said dessert.
    self.ingredients.map{|info| info.calories}.sum
    ### SOLUTION ###
    # as above
  end

  def self.all
    @@all
  end
end
