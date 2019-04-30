class Pledge
    attr_reader :user, :project, :amount
    @@all = []

    def initialize(user, project, amount)
        @user = user
        @project = project
        @amount = amount
        @@all << self
    end

    def self.all
        return @@all
    end

end