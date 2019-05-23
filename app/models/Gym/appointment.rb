class Appointment
    attr_reader :client, :location, :trainer
    @@all = []

    def initialize(client, location, trainer)
        @client = client
        @location = location
        @trainer = trainer
        @@all << self
    end

    def self.all
        return @@all
    end
end