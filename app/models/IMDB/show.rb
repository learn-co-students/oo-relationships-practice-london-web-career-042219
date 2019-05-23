class Show
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        return @@all
    end

    def episodes
        Episode.all.select { |episode| episode.show == self }
    end

    def appearances
        episodes.map { |episode| episode.appearances }.flatten
    end

    def characters
        appearances.map { |appearance| appearance.character }.uniq
    end

    def actors
        characters.map { |character| character.actor }.uniq
    end

    def on_the_big_screen?
        Movie.all.any? { |movie|  movie.title == self.title }
    end
end