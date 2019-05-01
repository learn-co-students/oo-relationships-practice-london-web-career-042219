class Passenger
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
      Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers #A passenger has many drviers THROUGH ride #DONE
      rides.map {|ride| ride.driver}
    end

    def total_distance #DONE
        rides.map {|ride| ride.distance}.sum
    end

    def self.premium_members  #DONE
      @@all.select {|pass| pass.total_distance > 100}
    end


end