require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Movie Tests ###
movie1 = Movie.new("Movie One")
movie2 = Movie.new("Movie Two")
the_movie = Movie.new("The One")

### Actor Tests ###
actor1 = Actor.new("Actor One")
actor2 = Actor.new("Actor Two")
actor3 = Actor.new("Actor Three")

### Character Tests ###
character1 = Character.new("Character One", actor1)
character2 = Character.new("Character Two", actor2)
character3 = Character.new("Character Three", actor2)
character4 = Character.new("Character Four", actor3)

### MovieAppearance Tests ###
movie_app1 = MovieAppearance.new("Movie Appearance One", movie1, character1)
movie_app2 = MovieAppearance.new("Movie Appearance Two", movie1, character2)
movie_app2 = MovieAppearance.new("Movie Appearance Three", movie1, character2)
movie_app3 = MovieAppearance.new("Movie Appearance Four", movie2, character3)
movie_app4 = MovieAppearance.new("Movie Appearance Five", movie2, character4)

### Show Tests ###
show1 = Show.new("Show One")
show2 = Show.new("Show Two")
the_show = Show.new("The One")

### Episode Tests ###
episode1 = Episode.new("Episode One", show1)
episode2 = Episode.new("Episode Two", show2)

### ShowAppearance Tests ###
show_app1 = ShowAppearance.new("Show Appearance One", episode1, character1)
show_app2 = ShowAppearance.new("Show Appearance Two", episode2, character2)

Pry.start
