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

  def rides
    Ride.all.select { |ride| ride.driver == self}
  end

  def passengers
    rides.map { |ride| ride.passenger}.uniq
  end

  def total_distance
    rides.map { |ride| ride.distance}.sum
  end

  def self.mileage_cap(distance)
    @@all.select do |driver|
      driver.total_distance > distance
    end
  end

end
