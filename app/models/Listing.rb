class Listing
    attr_accessor :name, :city
    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips #listings HAVE MANY trips
      Trip.all.select {|trip| trip.listing == self}
    end

    def guests #Listings HAVE MANY Guests THROUGH Trips
        trips.map {|trip| trip.guest}
    end

    def trip_count
      trips.length
    end

   def self.find_all_by_city(city)
     @@all.select {|listing| listing.city == city}  
   end

    def self.most_popular
        #finds the listing that has had the most trips
        @@all.max_by {|listing| listing.trips.length}
    end






    
end