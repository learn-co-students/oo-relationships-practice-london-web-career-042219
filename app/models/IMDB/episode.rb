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

    def self.by_show(show)
        return @@all.select { |episode| episode.show == show }
    end

    def self.characters_by_episode
        
    end
end