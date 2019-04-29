require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jaws = Movie.new("jaws")
diehard = Movie.new("diehard")
terminator = Movie.new("terminator")

scrubs = Show.new("scrubs")
jaws_show = Show.new("jaws")

scrubs1 = Episode.new("scrubs ep1",scrubs)
scrubs2 = Episode.new("scrubs ep2",scrubs)
scrubs3 = Episode.new("scrubs ep3",scrubs)
scrubs4 = Episode.new("scrubs ep4",scrubs)
jaws_show1 = Episode.new("jaws ep1",jaws_show)

alan = Actor.new("Alan")
steve = Actor.new("Steve")
judy = Actor.new("Judy")
ruth = Actor.new("Ruth")

jane = Character.new("jane",alan)
andy = Character.new("andy",steve)
jude = Character.new("jude",steve)
rick = Character.new("rick",steve)
roger = Character.new("roger",judy)
hector = Character.new("hector",alan)
yulia = Character.new("yulia",alan)
kyle = Character.new("kyle",steve)
rodrigo = Character.new("rodrigo",alan)

jane_scrubs1 = Appearance.new(jane, scrubs1)
andy_scrubs1 = Appearance.new(andy, scrubs1)
jude_scrubs1 = Appearance.new(jude, scrubs1)
jane_scrubs2 = Appearance.new(jane, scrubs2)
andy_scrubs2 = Appearance.new(andy, scrubs2)
jude_scrubs2 = Appearance.new(jude, scrubs2)
jane_scrubs3 = Appearance.new(jane, scrubs3)
andy_scrubs3 = Appearance.new(andy, scrubs3)
jude_scrubs3 = Appearance.new(jude, scrubs3)
roger_jaws_show1 = Appearance.new(roger, jaws_show1)
hector_jaws = Appearance.new(hector, jaws)
yulia_jaws = Appearance.new(yulia, jaws)
rodrigo_jaws = Appearance.new(rodrigo, jaws)
jane_jaws = Appearance.new(jane, jaws)
kyle_jaws = Appearance.new(hector, jaws)
roger_diehard = Appearance.new(roger, diehard)
kyle_diehard = Appearance.new(kyle, diehard)
yulia_diehard = Appearance.new(yulia, diehard)

binding.pry

0