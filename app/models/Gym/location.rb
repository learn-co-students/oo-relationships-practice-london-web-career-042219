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
        all.min_by { |location| location.clients.length }
    end

    def appointments
        Appointment.all.select{ |appointment| appointment.location == self }
    end

    def clients
        appointments.map { |appointment| appointment.client }
    end
end