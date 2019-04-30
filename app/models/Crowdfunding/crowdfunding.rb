class Crowdfunding

  @@all = []

  attr_reader :name, :project, :user

  def initialize(name, project, user)
    @name = name
    @project = project
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
end
