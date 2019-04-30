class Episode
    @@all = []
    attr_reader :title, :show

    def initialize(title, show)
        @title = title
        @show = show
        @@all << self
    end

    def self.all
        return @@all
    end

    def appearances
        Appearance.all.select { |appearance| appearance.picture == self}
    end

    def characters
        appearances.map { |appearance| appearance.character }
    end

    def actors
        characters.map { |character| character.actor }.uniq
    end

end