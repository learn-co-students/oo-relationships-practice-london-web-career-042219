class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def pledges
        Pledge.all.select { |pledge| pledge.user == self }
    end
    
    def projects
        Project.all.select{ |project| project.creator == self }
    end

    def self.highest_pledge
        Pledge.all.max_by { |pledge| pledge.amount }.user
    end

    def self.multi_pledger
        all.select { |user| user.pledges.uniq { |pledge| pledge.project }.length > 1 }
    end

    def self.project_creator
        all.select { |user| user.projects.length > 0 }
    end
end