require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Client Tests ###
client1 = Client.new("Client One")
client2 = Client.new("Client Two")
client3 = Client.new("Client Three")

### Location Tests ###
location1 = Location.new("Location One")
location2 = Location.new("Location Two")
location3 = Location.new("Location Three")

### Trainer Tests ###
trainer1 = Trainer.new("Trainer One")
trainer2 = Trainer.new("Trainer Two")
trainer3 = Trainer.new("Trainer Three")

### Gym Tests ###
gym1 = Gym.new("Gym One", location1, trainer1)
gym2 = Gym.new("Gym Two", location2, trainer1)
gym3 = Gym.new("Gym Three", location3, trainer1)
gym4 = Gym.new("Gym Four", location1, trainer2)
gym5 = Gym.new("Gym Five", location2, trainer2)
gym6 = Gym.new("Gym Six", location3, trainer2)
gym7 = Gym.new("Gym Seven", location1, trainer3)
gym8 = Gym.new("Gym Eight", location2, trainer3)
gym9 = Gym.new("Gym Nine", location3, trainer3)

Pry.start
