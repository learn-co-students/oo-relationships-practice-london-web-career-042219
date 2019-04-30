require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Guest Tests ###
guest1 = Guest.new("Guest One")
guest2 = Guest.new("Guest Two")
guest3 = Guest.new("Guest Three")

### Listing Tests ###
listing1 = Listing.new("Listing One", "London")
listing2 = Listing.new("Listing Two", "Hong Kong")
listing3 = Listing.new("Listing Three", "Paris")

### Trip Tests ###
trip1 = Trip.new("Trip One", listing1, guest1)
trip2 = Trip.new("Trip Two", listing1, guest2)
trip3 = Trip.new("Trip Three", listing1, guest3)
trip4 = Trip.new("Trip Four", listing2, guest1)
trip5 = Trip.new("Trip Five", listing2, guest2)
trip6 = Trip.new("Trip Six", listing2, guest3)
trip7 = Trip.new("Trip Seven", listing3, guest1)
trip8 = Trip.new("Trip Eight", listing3, guest2)
trip9 = Trip.new("Trip Nine", listing3, guest3)

Pry.start
