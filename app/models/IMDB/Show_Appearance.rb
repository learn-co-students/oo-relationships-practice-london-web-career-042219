class ShowAppearance

  attr_reader :name, :episode, :character

  @@all = []

  def initialize(name, episode, character)
    @name = name
    @episode = episode
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end

end
