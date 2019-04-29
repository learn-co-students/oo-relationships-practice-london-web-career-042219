class Dessert

    @@all = [] 
    attr_reader :name
    attr_accessor :bakery


  def initialize (name, bakery)
    @name =name
    @bakery = bakery
      @@all << self
  end

  def self.all
    @@all
  end

    def ingredients #DONE
      #should return an array of ingredients for the dessert
      Ingredient.all.select {|ingredient| ingredient.dessert == self }
      
    end

    def calories #DONE
      ingredients = Ingredient.all.select {|ingred| ingred.dessert == self }
      ingredients.map {|ingredient| ingredient.calorie}.sum

      #ingredients.map|ingredient| ingredient.calories}.sum
      
    end

end
