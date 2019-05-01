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

########################################
#AirBNB test data...

adna = Guest.new("Adna")
pat = Guest.new("Pat")
amari = Guest.new("Amari")
amari2 = Guest.new("Amari")

l1 = Listing.new("The Tower", "Paris")
l2 = Listing.new("Queens House", "London")
l3 = Listing.new("Country House", "Aberdeen")

t1 = Trip.new(l1,pat)
t2 = Trip.new(l1,adna)
t3 = Trip.new(l2,amari)
t4 = Trip.new(l3,amari)
t5 = Trip.new(l1,adna)
##############################
#Lyft/Uber

p_dave = Passenger.new("Dave")
p_amari = Passenger.new("Amari")
p_adna = Passenger.new("Adna")

d_ross = Driver.new("Ross")
d_sam = Driver.new("Sam")
d_nico = Driver.new("Nico")

downtown = Ride.new("Downtown",d_ross,p_adna, 200)
uptown = Ride.new("Uptown",d_sam,p_amari, 3.4)
library = Ride.new("Library", d_nico,p_dave, 7.6)
club = Ride.new("The Club", d_nico,p_adna, 6.6)




Pry.start

