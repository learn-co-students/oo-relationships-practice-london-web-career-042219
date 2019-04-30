class Driver

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    # returns all passengers a driver has had
    # Ride.all.select{|ride| ride.driver == self}.map{|ride| ride.passenger}
    rides.map{|ride| ride.passenger}
  end

  def rides
    # Returns all rides a driver has made
    Ride.all.select{|ride| ride.driver == self}
  end

  def mileage
    # Helper Method #
    # Total mileage for said driver
    rides.map{|ride| ride.distance}.sum
  end

  def self.mileage_cap(distance)
    # takes an argument of a distance and returns all drivers who have exceeded that mileage
    Ride.all.select{|ride_data| ride_data.driver.mileage > distance}.map{|inner_ride| inner_ride.driver}.uniq
  end
end
