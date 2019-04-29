class Location
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        return @@all
    end

    def self.least_clients
        all.min_by { |location| Appointment.by_location(location).length }
    end
end