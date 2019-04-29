class Ingredient
    @@all = []

    attr_reader :name, :dessert, :calories

    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end
    
    def self.all
        return @@all
    end

    def self.by_dessert(dessert)
        return all.select { |ingredient| ingredient.dessert == dessert }
    end
    
    def self.find_all_by_name(name)
        return all.select { |ingredient| ingredient.name.include?(name) }
    end

    def bakery
        return self.dessert.bakery
    end
end