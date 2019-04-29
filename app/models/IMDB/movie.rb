class Movie
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.most_actors
    end

    def self.movie_titles
        return all.map { |movie| movie.title }
    end

    def self.most_actors
        all.max_by{ |movie| Appearance.by_picture(movie).map { |appearance| appearance.character }.map { |character| character.actor }.uniq.length }
    end

end