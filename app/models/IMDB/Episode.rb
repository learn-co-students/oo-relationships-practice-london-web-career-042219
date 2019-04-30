class Episode

  attr_reader :name, :show

  @@all = []

  def initialize(name, show)
    @name = name
    @show = show
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    @@all.select{|episode_info| episode_info.character}
  end

end
