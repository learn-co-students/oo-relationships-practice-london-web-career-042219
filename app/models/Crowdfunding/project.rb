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

    def goal_met?
        return Pledge.by_project(self).sum { |pledge| pledge.amount } >= self.goal ? true : false
    end

    def self.no_pledges
        all.select { |project| (Pledge.by_project(project).length) == 0}
    end
    
    def self.above_goal
        return all.select{ |project| project.goal_met? }
    end

    def self.most_backers
        all.max_by { |project| Pledge.by_project(project).map{ |pledge| pledge.user }.uniq.length }
    end
    
    def self.by_creator(creator)
        all.select { |project| project.creator == creator }
    end

end