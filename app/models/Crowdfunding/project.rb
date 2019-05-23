class Project
    attr_reader :name, :creator, :goal
    @@all = []

    def initialize(name, creator, goal)
        @name = name
        @creator = creator
        @goal = goal
        @@all << self
    end

    def self.all
        return @@all
    end

    def pledges
        Pledge.all.select { |pledge| pledge.project == self }
    end
    
    def pledged_amount
        pledges.sum { |pledge| pledge.amount}
    end

    def self.no_pledges
        all.select { |project| project.pledges.length == 0 }
    end

    def self.above_goal
        all.select { |project|  project.pledged_amount >= project.goal }
    end

    def self.most_backers
        all.max_by { |project| project.pledges.uniq { |pledge| pledge.user }.length }
    end
    
end