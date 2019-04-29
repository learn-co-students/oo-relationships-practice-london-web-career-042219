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

    def self.highest_pledge
        return Pledge.all.max_by { |pledge| pledge.amount }.user
    end

    def self.multi_pledger
        all.select { |user| Pledge.by_user(user).length > 1 }
    end

    def self.project_creator
        all.select { |user| Project.by_creator(user).length > 0 }
    end
    
end