class Ingredient

  @@all = []

  attr_reader :i_name, :dessert, :calories

  def initialize(i_name, dessert, calories = nil)
    @i_name  = i_name
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def desserts
    # return a dessert object for said ingredient
    Ingredient.all.select{|info| info == self}.map{|info| info.dessert}
    ### SOLUTION ###
  end

  def bakerys
    # return the bakery object for the bakery that uses said ingredient
    self.desserts.map{|info| info.bakery}
    ### SOLUTION ###
    # dessert.bakery
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(string)
    # take the string argument and return an array of all ingredients that include
    # said string in their name.
    # .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
    # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    Ingredient.all.select {|info| info.i_name.downcase.include?(string.downcase)}.map{|info| info.i_name}
    ### SOLUTION ###
    # all.select{|info| info.name.include?(string)}
  end
end
