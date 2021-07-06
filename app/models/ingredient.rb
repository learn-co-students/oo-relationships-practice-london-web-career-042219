class Ingredient
  @@all = []
  attr_reader :calories, :dessert, :name
  
  def initialize(name, dessert, calories)
    @@all << self
    @name = name
    @calories = calories
    @dessert = dessert
  end

  def bakery
    dessert.bakery
  end

  def self.find_all_by_name(name)
    @@all.select{|ingredient| ingredient.name.include?(name)}
  end

  def self.all
    @@all
  end
end
