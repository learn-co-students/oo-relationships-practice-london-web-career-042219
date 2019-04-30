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

    def ingredients #DONE #return an array of ingreds for the dessert
      Ingredient.all.select {|ingredient| ingredient.dessert == self }  
    end

    def calories #DONE
      ingredients.map {|ingredient| ingredient.calorie}.sum
    end

end
