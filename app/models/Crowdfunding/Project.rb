class Project

  @@all = []

  attr_reader :name, :goal

  def initialize(name, goal)
    @name = name
    @goal = goal
    @@all << self
  end

  def self.all
    @@all
  end

  def self.no_pledges
    # returns all projects which have no pledges yet
  end

  def self.above_goal
    # returns all projects which have met or exceeded their pledge goal
  end

  def self.most_backers
    # returns the project with the highest number of backers
  end
end
