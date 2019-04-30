class Movie
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appearances #returns Actor instnaces
        MovieAppearance.all.select {|app| app.movie == self}
    end

    def characters  #NICO: 3 appearances to 3 characters
        appearances.map {|ma| ma.character}.uniq
    end

    def actors  #NICO: seperating out jobs
        characters.map {|char| char.actor}.uniq
    end

    def actor_count   #NICO
    actors.length
    end

    def actor_list
        appearances.select {|app| app.movie == self}
    end

    def self.most_actors #HERE
        @@all.max_by {|movie| movie.actor_count} #could just be all. @@all faster
    end
end
