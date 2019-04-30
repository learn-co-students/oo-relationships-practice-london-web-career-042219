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

    def characters
        Character.all.select { |character| character.actor == self }
    end

    def appearances
        characters.map { |character| character.appearances}.flatten
    end

    def movies
        appearances.select { |appearance| appearance.picture.class == Movie }
            .map { |appearance| appearance.picture }.uniq
    end

    def episodes
        appearances.select { |appearance| appearance.picture.class == Episode }
            .map { |appearance| appearance.picture }.uniq
    end

    def shows
        episodes.map{ |episode| episode.show }.uniq
    end

    def self.most_characters
        all.max_by { |actor| actor.characters.length }
    end

end