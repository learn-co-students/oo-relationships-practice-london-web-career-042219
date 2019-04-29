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

    def self.by_location(location)
        all.select { |instance| instance.location == location}
    end

end