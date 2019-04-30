class Character
    attr_accessor :name, :actor
    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movie_appearances
        MovieAppearance.all.select {|apps| apps.character == self}
    end #NICO spilt into movie and show appearance methods

    def show_appearances
        ShowAppearance.all.select {|apps| apps.character == self}
    end

    def movie_count #NICO
        movie_appearances.length
    end

    def show_count #NICO
        show_appearances.length
    end

    def appearance_count #NICO
        movie_count + show_count
    end
    
    def self.most_appearances #return which character of film/television appears in the most films or tv shows 
       @@all.max_by {|character| character.appearance_count}.name
    end
end

  #def appearances #return the appearances of characters
     #   apps = []
      #  apps << MovieAppearance.all.select {|apps| apps.character == self}
       # apps << ShowAppearance.all.select {|apps| apps.character == self}
        #apps.flatten
   # end