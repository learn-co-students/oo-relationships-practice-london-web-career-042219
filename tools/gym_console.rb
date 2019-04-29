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

jane1 = Appointment.new(jane,newyork)
jane2 = Appointment.new(jane,newyork)
jane3 = Appointment.new(jane,newyork)
jane4 = Appointment.new(jane,london)
andy1 = Appointment.new(andy,london)
andy2 = Appointment.new(andy,london)
andy3 = Appointment.new(andy,london)
jude1 = Appointment.new(jude,london)
roger1 = Appointment.new(roger,newyork)
hector1 = Appointment.new(hector,seattle)
yulia1 = Appointment.new(yulia,newyork)
kyle1 = Appointment.new(kyle,london)
rodrigo1 = Appointment.new(rodrigo,london)
rodrigo2 = Appointment.new(rodrigo,london)
rodrigo3 = Appointment.new(rodrigo,london)


binding.pry

0