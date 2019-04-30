class Pledge

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def project
    # returns the project associated with a particular pledge
  end

  def user
    # returns the user associated with a particular pledge
  end
end
