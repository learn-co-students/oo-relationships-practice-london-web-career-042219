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

    def self.on_the_big_screen
        all.select { |show| Movie.movie_titles.include?(show.title)}
    end

end