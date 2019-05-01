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

  def trips
    Trip.all.select { |trip| trip.listing == self}
  end

  def guests
    trips.map { |trip| trip.guest}.uniq
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    @@all.select {|trip| trip.city == city}
  end

  def self.most_popular
    @@all.find.max_by {|trip| trip.trip_count}
  end

end
