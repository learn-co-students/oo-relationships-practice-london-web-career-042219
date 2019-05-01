class Movieappearance

  @@all = []

  attr_accessor :movie, :character

  def initialize(movie, character)
    @movie = movie
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end

end
