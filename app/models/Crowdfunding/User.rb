class User

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_pledge
    # returns the user who has made the highest pledge
  end

  def self.multi_pledger
    # returns all users who have pledged to multiple projects
  end

  def self.project_creator
    # returns all users who have created a project
  end
end
