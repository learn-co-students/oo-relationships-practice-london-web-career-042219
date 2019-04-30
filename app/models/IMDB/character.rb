class Character
    @@all = []
    attr_reader :name, :actor

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        return @@all
    end

    def appearances
        Appearance.all.select { |appearance| appearance.character == self }
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

    def self.most_appearances
        all.max_by { |character| character.appearances.length }
    end
end