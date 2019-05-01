class Ride
    @@all =[]
    attr_accessor :name, :passenger, :driver, :distance
  
    def initialize (name, driver,passenger , distance)
      @name = name
      @passenger = passenger
      @driver = driver
      @distance = distance
      @@all << self
    end
  
    def self.all
      @@all
    end

    def self.total_distance
        @@all.map {|ride| ride.distance}.sum
    end


    def self.average_distance
      total_distance / @@all.length
    end

end
