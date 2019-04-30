class Show

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def on_the_big_screen
    # Return TV shows that share the same name as a movie
  end

end
