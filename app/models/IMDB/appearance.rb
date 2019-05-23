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

    def actor
        @character.actor
    end

end