class Actor
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.most_characters
    end
end