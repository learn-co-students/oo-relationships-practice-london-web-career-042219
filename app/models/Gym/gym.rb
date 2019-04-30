class Gym

  @@all = []

  attr_reader :name, :location, :trainer

  def initialize(name, location, trainer)
    @name = name
    @location = location
    @trainer = trainer
    @@all << self
  end

  def self.all
    @@all
  end
end
