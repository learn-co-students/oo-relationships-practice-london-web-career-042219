class Show

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_by_name
    @@all.map {|title| title.name}
  end

    def on_the_big_screen
      Movie.all.map {|title| title.name}.include? (self.name)
      #Movie.all.any? {|movie| movie.name = @name} nico's solution
      
      # Movie.all.each do |title|
      #   title.name == self.name ? true : false
      # end
    end
end
