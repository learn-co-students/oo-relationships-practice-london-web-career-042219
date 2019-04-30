class Character

  attr_reader :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def most_appearances
    # Return the character of film/tv who appears in the most films or tv shows
  end

end
