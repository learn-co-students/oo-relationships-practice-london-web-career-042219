require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

############## Bakery ###############

carlosbakery = Bakery.new("Carlo's Bakery")
pauls = Bakery.new("Paul's")

brownie = Dessert.new("Chocolate Brownie", carlosbakery)
cookie = Dessert.new("Cookie", pauls)
pie = Dessert.new("Blueberry Pie", carlosbakery)

chocolate = Ingredient.new("Chocolate", 50, brownie)
chocolate_chips = Ingredient.new("Chocolate Chips", 40, cookie)
milk = Ingredient.new("Milk", 20, brownie)
butter = Ingredient.new("Butter", 40, cookie)
flour = Ingredient.new("Flour", 25, brownie)
egg = Ingredient.new("Egg", 30, brownie)
nuts = Ingredient.new("Nuts", 20, cookie)
blueberry = Ingredient.new("Blueberry", 5, pie)
custard = Ingredient.new("Custard", 55, pie)
dought = Ingredient.new("Dought", 45, pie)

############## IMDb ###############

rocky = Movie.new("Rocky I")
rocky2 = Movie.new("Rocky II")
rocky3 = Movie.new("Rocky III")
rambo = Movie.new("Rambo")
star_trek = Movie.new("Star Trek")

star_trek_show = Show.new("Star Trek")
got = Show.new("Game of Thrones")

stalone = Actor.new("Silvester Stalone")
chris_pine = Actor.new("Chris Pine")
zachary_quinto = Actor.new("Zachary Quinto")
leonard_nimoy = Actor.new("Leonard Nimoy")

rocky_balboa = Character.new("Rocky Balboa", stalone)
kirk = Character.new("Captain Kirk", chris_pine)
spock = Character.new("Spock", zachary_quinto)
old_spock = Character.new("Prime Spock", leonard_nimoy)
john_rambo = Character.new("John Rambo", stalone)

ma1 = Movieappearance.new(rocky, rocky_balboa)
ma2 = Movieappearance.new(rocky2, rocky_balboa)
ma3 = Movieappearance.new(rocky3, rocky_balboa)
ma4 = Movieappearance.new(rambo, john_rambo)
ma6 = Movieappearance.new(star_trek, spock)
ma7 = Movieappearance.new(star_trek, old_spock)
ma8 = Movieappearance.new(star_trek, kirk)


############## LYFT ###############

p1 = Passenger.new("Mario")
p2 = Passenger.new("Victoria")
p3 = Passenger.new("Mia")

d1 = Driver.new("Lewis Hamilton")
d2 = Driver.new("Sebastian Vettel")
d3 = Driver.new("Felipe Massa")

r1 = Ride.new(p1, d1, 11.35)
r2 = Ride.new(p1, d2, 22.15)
r3 = Ride.new(p1, d3, 8.52)
r4 = Ride.new(p1, d1, 10.35)
r5 = Ride.new(p1, d1, 9.74)
r6 = Ride.new(p1, d3, 21.35)
r7 = Ride.new(p1, d3, 19.95)
r8 = Ride.new(p2, d1, 7.35)
r9 = Ride.new(p2, d3, 6.65)
r10 = Ride.new(p2, d2, 11.60)
r11 = Ride.new(p2, d1, 3.35)
r12 = Ride.new(p3, d1, 45.15)
r13 = Ride.new(p3, d3, 11.00)
r14 = Ride.new(p3, d2, 22.96)
r15 = Ride.new(p3, d3, 38.73)

############## Airbnb ###############

l1 = Listing.new("Caesar Palace", "Las Vegas")
l2 = Listing.new("The Venetian", "Las Vegas")
l3 = Listing.new("Vantaggio", "San Diego")
l4 = Listing.new("Lake House", "Lake Tahoe")

g1 = Guest.new("Neymar")
g2 = Guest.new("Suarez")
g3 = Guest.new("Ronaldo Fenomeno")
g4 = Guest.new("Cristiano Ronaldo")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g2, l3)
t4 = Trip.new(g3, l4)
t5 = Trip.new(g4, l1)
t6 = Trip.new(g4, l2)
t7 = Trip.new(g4, l1)

############## Crowdfunding ###############

user1 = User.new("Steve Jobs")
user2 = User.new("Bill Gates")
user3 = User.new("Jeff Bezos")
user4 = User.new("Steve Woszniack")

project1 = Project.new("Project Manhattan", 1000, user1)
project2 = Project.new("Project X", 500, user2)
project3 = Project.new("Project Cruj", 750, user4)
project4 = Project.new("Fail Project", 200, user2)

pledge1 = Pledge.new(user1, project2, 300)
pledge2 = Pledge.new(user2, project1, 700)
pledge3 = Pledge.new(user4, project1, 400)
pledge4 = Pledge.new(user3, project1, 300)
pledge5 = Pledge.new(user1, project2, 200)
pledge6 = Pledge.new(user1, project3, 300)

############## Crowdfunding ###############
Pry.start
puts "#AvanteTricolor"
