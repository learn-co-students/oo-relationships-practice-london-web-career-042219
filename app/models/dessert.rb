class Dessert
#a desert has a name and ingredients. we want to push all the deserts into an array.
#I think this is the joining class

attr_reader :name, :bakery

@@all = []

  def initialize(name, bakery)
    @name = name
    # @ingredient = ingredient
    #@ingredient = []
    #@ingredient << ingredient
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select{|ingredient| ingredient.dessert == self}
  end


  def calories #works #returns number
    total_cal = ingredients.map {|ingredient| ingredient.calories}
    total_cal.sum
    # Ingredient.all.each {|ingredient| ingredient.name == @ingredient} #this just gives me all of the ingredinets
  end



end
