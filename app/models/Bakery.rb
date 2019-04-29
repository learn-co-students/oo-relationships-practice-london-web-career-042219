class Bakery

  attr_accessor :ingredients, :desserts

  @@ALLBAKERIES = []

  def initialize
    @desserts  = []
    @@ALLBAKERIES << self
  end

  def average_calories
    total_number_desserts = self.desserts.count
    calorie_count = 0
    self.desserts.each {|dessert| calorie_count += dessert.calories}

    average_calories = calorie_count / total_number_desserts

    average_calories
  end

  def ingredients
    @ingredient_list = []
    self.desserts.each {
      |dessert| @ingredient_list << dessert.ingredients
    }
    @ingredient_list.flatten.uniq
  end

  def shopping_list
    self.ingredients.join(", ")
  end

  def self.all
      @@ALLBAKERIES
  end

end
