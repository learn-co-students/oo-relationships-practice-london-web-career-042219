class Listing

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    # returns an array of all guests who have stayed at a listing
    trips.map{|trip| trip.guest}
  end

  def trips
    # returns an array of all trips at a listing
    Trip.all.select{|trip| trip.listing == self}
  end

  def trip_count
    # returns the number of trips that have been taken to that listing
    guests.count
  end

  def self.find_all_by_city(city)
    # takes an argument of a city name (as a string) and returns all the listings for that city
  end

  def self.most_popular
    # finds the listing that has had the most trips
  end
end
