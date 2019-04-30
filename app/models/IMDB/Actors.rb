class Actor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_characters
    # Return which actor has the most different characters played.
    # Character.all.select{|info| info.actor == @@all}
    my_actor = []
    counter = 0
    while counter < self.all.length
      if Character.all[counter].actor != my_actor
        my_actor << Character.all[counter].actor
      end
      counter += 1
    end
    my_actor.max_by{|x| my_actor.count(x)}
  end

  def movie_information
    MovieAppearance.all.select{|movie_app_info| movie_app_info.character.actor == self}
  end

  def characters
    # Return an array of said actors characters
    self.movie_information.map{|info| info.character}
  end

  def movies
    # Return an array of said actors movies.
    self.movie_information.map{|info| info.movie}
  end

  def show_information
    ShowAppearance.all.select{|show_app_info| show_app_info.character.actor == self}
  end

  def episodes
    # Return an array of said actors episodes
    show_information.map{|info| info.episode}
  end

  def shows
    # Return an array of said actors shows.
    episodes.map{|info| info.show}
  end
end
