class Ride

  @@all = []

  attr_reader :passenger, :driver
  attr_accessor :distance

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger
    @passenger
  end

  def driver
    @driver
  end

  def self.average_distance
    @@all.map {|ride| ride.distance}.sum / self.all.length
  end

end
