class Ingredient

attr_accessor :calories

@@ALLINGREDIENTS = []

  def initialize
    @calories
    @@ALLINGREDIENTS << self
  end

  def dessert
    Dessert.all.select {
      |dessertname| dessertname.ingredients.include?(self)
      }
    #OR find if you just wanted one object. I can't tell which one you want
  end

  def bakery
    bakeries_with_ingredient = []
    self.dessert.each {
      |dessert| Bakery.all.select {
        |bakeryname| if bakeryname.desserts.include?(dessert)
           bakeries_with_ingredient << bakeryname
        end
        }
      }
      bakeries_with_ingredient
  end

  def self.all
    @@ALLINGREDIENTS
  end

  def self.find_all_by_name(string)
    @@ALLINGREDIENTS.select {|ingredient| ingredient.include?(string)}
  end

end
