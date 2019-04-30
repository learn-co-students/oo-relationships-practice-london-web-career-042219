class Ingredient
    @@all = []
    attr_reader :name
    attr_accessor :dessert, :calorie

    def initialize (name, dessert, calorie)
        @name = name
        @dessert = dessert
        @calorie = calorie
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery # DONE
        dessert.bakery  
    end

    def self.find_all_by_name(ingredient) #DONE
        all.select{ |ingred| ingred.name.downcase.include?(ingredient)}
        #self not necessary here!
    end
end