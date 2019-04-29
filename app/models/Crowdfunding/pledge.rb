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

    def self.by_user(user)
        return @@all.select{ |pledge| pledge.user == user }
    end
    
    def self.by_project(project)
        return @@all.select{ |pledge| pledge.project == project }
    end

    def self.max_pledge
        return @@all.max_by{ |pledge| pledge.amount }
    end

end