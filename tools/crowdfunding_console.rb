require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alan = User.new("Alan")
steve = User.new("steve")
judy = User.new("judy")
ruth = User.new("ruth")

airbike = Project.new("airbike",alan,1000)
jumpjet = Project.new("jumpjet",steve,50000)
goo = Project.new("goo",steve,10000)
slime = Project.new("slime",judy,7000)
jellotires = Project.new("jellotires",alan,700)
yamguns = Project.new("yamguns",alan,4000)
hamwheels = Project.new("hamwheels",steve,4000)
smellprojector = Project.new("smellprojector",alan,40000)

pledge1 = Pledge.new(alan, airbike, 400)
pledge2 = Pledge.new(steve, airbike, 400)
pledge3 = Pledge.new(ruth, jumpjet, 50000)
pledge4 = Pledge.new(ruth, hamwheels, 3900)
pledge5 = Pledge.new(judy, smellprojector, 100000)
pledge6 = Pledge.new(judy, jumpjet, 50)
pledge7 = Pledge.new(steve, jumpjet, 50)

binding.pry

0