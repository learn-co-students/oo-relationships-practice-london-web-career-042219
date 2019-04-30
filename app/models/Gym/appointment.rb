class Appointment
    attr_reader :client, :location
    @@all = []

    def initialize(client, location)
        @client = client
        @location = location
        @@all << self
    end

    def self.all
        return @@all
    end

end