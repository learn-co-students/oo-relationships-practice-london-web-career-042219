require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Driver Tests ###
driver1 = Driver.new("Driver One")
driver2 = Driver.new("Driver Two")
driver3 = Driver.new("Driver Three")

### Passenger Tests ###
passenger1 = Passenger.new("Passenger One")
passenger2 = Passenger.new("Passenger Two")
passenger3 = Passenger.new("Passenger Three")

### Ride Tests ###
ride1 = Ride.new("Ride One", driver1, passenger1, 10.5)
ride2 = Ride.new("Ride Two", driver1, passenger2, 56.0)
ride3 = Ride.new("Ride Three", driver1, passenger3, 72.5)
ride4 = Ride.new("Ride Four", driver2, passenger1, 15.5)
ride5 = Ride.new("Ride Five", driver2, passenger2, 15.0)
ride6 = Ride.new("Ride Six", driver2, passenger3, 12.0)
ride7 = Ride.new("Ride Seven", driver3, passenger1, 7.5)
ride8 = Ride.new("Ride Eight", driver3, passenger2, 18.0)
ride9 = Ride.new("Ride Nine", driver3, passenger3, 99.5)
ride10 = Ride.new("Ride Ten", driver1, passenger1, 22.5)

Pry.start
