class Movie
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def actors
        Actor.all.select {|actor| actor.movies.include? self}
    end

    def self.all
        return @@all
    end

    def appearances
        Appearance.all.select{ |appearance| appearance.picture == self }
    end

    def characters
        appearances.map { |appearance| appearance.character }
    end

    def actors
        characters.map { |character| character.actor }.uniq
    end

    def self.most_actors
        all.max_by { |movie| movie.actors.length }
    end

end