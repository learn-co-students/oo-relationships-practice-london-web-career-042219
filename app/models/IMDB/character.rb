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

    def self.by_actor(actor)
        return @@all.select { |character| character.actor == actor }
    end
end