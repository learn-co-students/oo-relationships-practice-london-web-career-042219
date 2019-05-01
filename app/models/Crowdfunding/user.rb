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

  def pledges
    Pledge.all.select {|person| person.user == self }
  end

  def amount_per_pledge
    self.pledges.map {|person| person.amount}
  end

  def self.highest_pledge
    @@all.find.max_by {|user| user.amount_per_pledge}
  end

  def pledges_count
    pledges.length
  end

  def self.multi_pledger
    @@all.select do |user|
      user.pledges_count > 1
    end
  end

  def projects_per_user
    Project.all.select {|project| project.project_owner == self}
  end

  def project_count
    projects_per_user.length
  end

  def self.project_creator
    @@all.select do |user|
      user.project_count > 0
    end
  end

end
