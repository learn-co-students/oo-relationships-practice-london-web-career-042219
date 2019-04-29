class Bakery
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        return @@all
    end

    def ingredients
        return Dessert.by_bakery(self).map { |dessert| Ingredient.by_dessert(dessert) }
    end
    
    def desserts
        return Dessert.by_bakery(self)
    end

    def average_calories
        return (desserts.sum { |dessert| dessert.calories } / desserts.length)
    end

    def shopping_list
        desserts.map { |dessert| dessert.ingredients.map { |ingredient| ingredient.name }}.flatten.uniq.join(", ")
    end
end