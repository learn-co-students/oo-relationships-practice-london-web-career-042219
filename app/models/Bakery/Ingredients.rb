class Ingredient

  @@all = []

  attr_accessor :name, :calories, :dessert

  def initialize(name, calories, dessert)
    @name = name
    @calories = calories
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient_name)
   @@all.select {|ingredient| ingredient.name.include? ingredient_name}
  end
  #
  #
  def dessert
   return @dessert
  #   # @@all.find { |ingredient| ingredient.dessert == ingredient_name}
  end
  #
  def bakery
    return dessert.bakery
  end

end
