  class Ride

  @@all = []

  attr_reader :name, :driver, :passenger, :distance

  def initialize(name, driver, passenger, distance)
    @name = name
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    # returns the passenger object for that ride
    self.passenger
  end

  def drivers
    # returns the driver object for that ride
    self.driver
  end

  def self.average_distance
    # should find the average distance of all rides
    Ride.all.map{|ride| ride.distance}.sum / Ride.all.map{|ride| ride.distance}.count
  end
end
