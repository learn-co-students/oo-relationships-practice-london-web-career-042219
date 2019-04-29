class Trainer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.most_clients
        all.max_by { |trainer| Client.by_trainer(trainer).length }
    end

end