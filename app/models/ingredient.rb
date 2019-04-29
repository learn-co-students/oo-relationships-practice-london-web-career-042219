class Ingredient

attr_reader :name, :calories, :dessert

@@all = []

  def initialize(name, calories, dessert)
    @name = name
    @calories = calories
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    dessert.bakery
  end

  def self.find_all_by_name(ingredient_name)
    all.select {|ingredient| ingredient.name.include? ingredient_name}
  end




  # def bakery
  #   dessert.map
  # end


end
