class Appearance
    @@all = []
    attr_reader :character, :picture

    def initialize(character, picture)
        @character = character
        @picture = picture
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.by_character(character)
        return @@all.select { |appearance| appearance.character == character }
    end

    def self.by_picture(picture)
        return @@all.select { |appearance| appearance.picture == picture }
    end

    def 

end