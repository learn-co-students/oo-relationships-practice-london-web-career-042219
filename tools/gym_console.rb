require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alan = Trainer.new("Alan")
steve = Trainer.new("Steve")
judy = Trainer.new("Judy")
ruth = Trainer.new("Ruth")

jane = Client.new("jane",alan)
andy = Client.new("andy",steve)
jude = Client.new("jude",steve)
roger = Client.new("roger",judy)
hector = Client.new("hector",alan)
yulia = Client.new("yulia",alan)
kyle = Client.new("kyle",steve)
rodrigo = Client.new("rodrigo",alan)

newyork = Location.new("new york")
london = Location.new("london")
seattle = Location.new("seattle")

jane1 = Appointment.new(jane,newyork, alan)
jane2 = Appointment.new(jane,newyork, alan)
jane3 = Appointment.new(jane,newyork, alan)
jane4 = Appointment.new(jane,london, alan)
andy1 = Appointment.new(andy,london,steve)
andy2 = Appointment.new(andy,london,steve)
andy3 = Appointment.new(andy,london,judy)
jude1 = Appointment.new(jude,london,judy)
roger1 = Appointment.new(roger,newyork,judy)
hector1 = Appointment.new(hector,seattle,judy)
yulia1 = Appointment.new(yulia,newyork,judy)
kyle1 = Appointment.new(kyle,london,judy)
rodrigo1 = Appointment.new(rodrigo,london, ruth)
rodrigo2 = Appointment.new(rodrigo,london, ruth)
rodrigo3 = Appointment.new(rodrigo,london, ruth)


binding.pry

0