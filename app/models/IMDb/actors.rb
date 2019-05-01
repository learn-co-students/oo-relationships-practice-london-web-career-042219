class Actor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select { |movie| movie.actor == self}.length
  end

  def self.most_characters
    @@all.find.max_by {|movie| movie.characters}
  end
end
