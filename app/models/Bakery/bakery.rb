class Bakery

  @@all = []

  attr_reader :b_name

  def initialize(b_name)
    @b_name = b_name
    @@all << self
  end

  def ingredients
    # Return an array of ingredients for this bakeries desserts.
    Ingredient.all.select{|info| info.dessert.bakery == self}.map{|info| info.i_name}
  end

  def desserts
    # Return an array of desserts the bakery makes.
    Dessert.all.select{ |info| info.bakery == self}.map{|info| info.d_name}
  end

  def average_calories
    # return a number totalling the average number of calories for the deserts sold
    # at this bakery
    ing_to_add = Ingredient.all.select{|info| info.dessert.bakery == self}.map{|info| info.calories}
    part_one = ing_to_add.length
    part_two = ing_to_add.sum
    answer = part_two/part_one
  end

  def self.all
    @@all
  end

  def shopping_list
    # return a string of names for ingredents for this bakery
    self.ingredients.join(', ')
  end
end
