class Dessert

@@ALLDESSERTS = []

attr_accessor :ingredients

  def initialize
    @ingredients = []
    @@ALLDESSERTS << self
  end

  def bakery
    Bakery.all.select {
      |bakeryname| bakeryname.desserts.include?(self)
      }
  end

  def calories
    total_calories = 0
    self.ingredients.each {
      |ingredient| total_calories += ingredient.calories
      }
    total_calories
  end

  def self.all
    @@ALLDESSERTS
  end

end
