class Actor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters #returns Characters by Actor
        Character.all.select{|character| character.actor == self}
    end

    def character_count  #NICO
        characters.length
    end
    
    def movie_appearances #WORKS
      MovieAppearance.all.select{|app| app.character.actor == self }
    end

    def self.most_characters
       all.map {|actor| actor.characters}.max_by {|their_chars| their_chars.length}[0].actor.name
    end

end

