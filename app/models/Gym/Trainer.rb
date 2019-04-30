class Trainer

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    # should find which trainer has the most clients. give that trainer a bonus!
  end
end
