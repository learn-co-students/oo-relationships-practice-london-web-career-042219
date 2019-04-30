class Trip

  @@all = []

  attr_reader :name, :listing, :guest

  def initialize(name, listing, guest)
    @name = name
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    # returns the listing object for the trip
    self.listing
  end

  def guests
    # returns the guest object for the trip
    self.guest
  end
end
