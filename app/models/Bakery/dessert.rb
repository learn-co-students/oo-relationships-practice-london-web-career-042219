class Dessert
    @@all = []

    attr_reader :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end
    
    def self.all
        return @@all
    end

    def self.by_bakery(bakery)
        return all.select { |dessert| dessert.bakery == bakery }
    end

    def ingredients
        return Ingredient.by_dessert(self)
    end

    def bakery
        return @bakery
    end

    def calories
        Ingredient.by_dessert(self).sum { |ingredient| ingredient.calories }
    end
end