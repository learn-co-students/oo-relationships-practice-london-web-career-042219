class Movie

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_actors
    # return the movie with the most actors in.
    self.characters
  end

  def characters
    # Returns an array of all characters in said movie
    MovieAppearance.all.select do |movie_app_info|
      movie_app_info.movie == self
    end.map{|info| info.character}
  end

  def actors
    # Returns an array of actors from said movie
    self.characters.map{|character_info| character_info.actor}
  end

end
