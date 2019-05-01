class Movie

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def actors
    Movieappearance.all.select {|actor| actor.movie == self}.length
  end

  def self.most_actors
    @@all.find.max_by {|movie| movie.actors}
  end

end
