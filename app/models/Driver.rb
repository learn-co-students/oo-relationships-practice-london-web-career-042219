class Driver
    @@all =[]
    attr_accessor :name
  
    def initialize (name)
      @name =name
      @@all << self
    end
  
    def self.all
      @@all
    end

    def rides #DONE
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers #D has many P THROUGH #DONE
        rides.map {|ride| ride.driver}
    end

    def milage
        rides.map {|map| map.distance}.sum
    end

    def self.milage_cap(float)
      @@all.select {|driver| driver.milage > float}
    end




    
end

