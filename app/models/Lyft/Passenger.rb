class Passenger

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def drivers
    # returns all drivers a passenger has ridden with
    rides.map{|ride| ride.driver}
  end

  def rides
    # returns all rides a passenger has been on
    Ride.all.select{|ride| ride.passenger == self}
  end

  def total_distance
    # should calculate the total distance the passenger has travelled with the service
    rides.map{|ride| ride.distance}.sum
  end

  def self.premium_members
    # should find all passengers who have travelled over 100 miles with the service
      Ride.all.select{|ride_data| ride_data.passenger.total_distance > 100}.map{|inner_ride| inner_ride.passenger}.uniq
  end
end
