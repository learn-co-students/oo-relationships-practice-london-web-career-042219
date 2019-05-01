class Project

  @@all = []

  attr_reader :name, :goal, :project_owner

  def initialize(name, goal, project_owner)
    @name = name
    @goal = goal
    @project_owner = project_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self }
  end

  def pledges_count
    pledges.length
  end

  def self.no_pledges
    @@all.select {|project| project.pledges_count == 0}
    # @@all.select do |project|
    #   project.pledges_count == 0
  end

  def amounts
    pledges.map {|pledge| pledge.amount}.sum
  end

  def self.above_goal
    @@all.select {|project| project.amounts >= project.goal}
    # @@all.select {|pledge| pledge.amounts >= @goal.amounts}
  end

  def beckers
    pledges.uniq
  end

  def beckers_count
    beckers.length
  end

  def self.most_backers
    @@all.max_by {|project| project.beckers_count}
  end
end
