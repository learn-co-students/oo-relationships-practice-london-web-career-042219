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

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def drivers
    rides.map { |ride| ride.driver}.uniq
  end

  def total_distance
    rides.map { |ride| ride.distance}.sum
  end

  def self.premium_members
    @@all.select do |passenger|
      passenger.total_distance > 100
    end
  end
end
