class Pledge

  @@all = []

  attr_reader :user, :project, :amount

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def project
    @project
  end

  def user
    @user
  end
end
