require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sams = Bakery.new("Sams")
tims = Bakery.new("Tims")
johns = Bakery.new("Johns")

cake = Dessert.new("Cake", tims)
icecream = Dessert.new("Ice cream", tims)
lolly = Dessert.new("Lollypop", johns)
whipc = Dessert.new("Whipped cream", johns)

cream = Ingredient.new("Single Cream", icecream, 20)
choc = Ingredient.new("Dark Chocolate", cake, 50)
banana= Ingredient.new("Banana", icecream, 100)
flour = Ingredient.new("Flour", cake, 50)
sugar = Ingredient.new("Sugar", whipc, 20)

###########################################

emilia = Actor.new("Emilia Clark")
trey = Actor.new("Trey Parker")
matt = Actor.new("Matt Stone")
arnie =  Actor.new("Arnold Schwarzenegger")
jai = Actor.new("Jai Courtney")

khaleesi = Character.new("Daenerys Stormborn of the House Targaryen,First of Her Name, the Unburnt, Queen of the Andals and the First Men, Khaleesi of the Great Grass Sea,Breaker of Chains, and Mother of Dragons.",emilia)
sarah = Character.new("Sarah Connor", emilia)
doug = Character.new("Douglas Quaid", arnie)
cartman = Character.new("Eric Cartman", trey)
kenny = Character.new("Kenny McCormick", matt)
terminator = Character.new("T101", arnie)
oldterm = Character.new("Old T101", arnie)
john = Character.new("John Kimble", arnie)
kyle = Character.new("Kyle Reese", jai)

south_park = Show.new("South Park")
got = Show.new("Game of Thrones")

south_park_m = Movie.new("South Park")
genesis = Movie.new("Terminator: Genesis")
total = Movie.new("Total Recall")
kinder = Movie.new("Kindergarten Cop")
t_two = Movie.new("Terminator 2")
t_one = Movie.new("The Terminator")

sp_cart = MovieAppearance.new(south_park_m, cartman)
sp_ken =  MovieAppearance.new(south_park_m, kenny)
gen_arn = MovieAppearance.new(genesis, terminator)
gen_arn2 = MovieAppearance.new(genesis, oldterm)
gen_eml = MovieAppearance.new(genesis, sarah)
gen_kyl = MovieAppearance.new(genesis, kyle)
t_two = MovieAppearance.new(t_two, terminator)
tot_arn = MovieAppearance.new(total, doug)
kin_arn = MovieAppearance.new(kinder, john)
ter_arn = MovieAppearance.new(t_one, terminator)

sps_cart = ShowAppearance.new(south_park, cartman)
sps_ken = ShowAppearance.new(south_park, kenny)
got_eml = ShowAppearance.new(got, emilia)


Pry.start

