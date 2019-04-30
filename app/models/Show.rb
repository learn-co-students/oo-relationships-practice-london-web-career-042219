class Show
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen #should return true or false DONE
         Movie.all.select{|movie| movie.name == self.name} == [] ? false : true
         #Movie.all.any? {|movie|movie.title == @@title}
    end

end
