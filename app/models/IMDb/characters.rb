class Character

  @@all = []

  attr_accessor :name, :actor

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Movieappearance.all.select {|movie| movie.character == self}.length
  end

  def self.most_appearances
    @@all.find.max_by {|movie| movie.characters}
  end

end
