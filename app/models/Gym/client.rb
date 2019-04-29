class Client
    attr_reader :name
    attr_accessor :trainer
    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.by_trainer(trainer)
        return all.select { |client| client.trainer == trainer }
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def make_appointment(location)
        ClientLocation.new(self, location)
    end
end