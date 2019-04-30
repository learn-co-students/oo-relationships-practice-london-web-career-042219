class Location

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.least_clients
    # should find which location has the least clients training there.
    # we need to increase the marketing spend for that location!
  end
end
