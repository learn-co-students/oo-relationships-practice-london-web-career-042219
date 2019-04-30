require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Pledge Tests ###
pledge1 = Pledge.new("Pledge One")
pledge2 = Pledge.new("Pledge Two")
pledge3 = Pledge.new("Pledge Three")

### Project Tests ###
project1 = Project.new("Project One", 5000)
project2 = Project.new("Project Two", 732)
project3 = Project.new("Project Three", 7320)

### User Tests ###
user1 = User.new("User One")
user2 = User.new("User Two")
user3 = User.new("User Three")

### Crowdfunding Tests ###
crowdfunding1 = Crowdfunding.new("Crowdfunding One", project1, user1)
crowdfunding2 = Crowdfunding.new("Crowdfunding Two", project1, user2)
crowdfunding3 = Crowdfunding.new("Crowdfunding Three", project1, user3)
crowdfunding4 = Crowdfunding.new("Crowdfunding Four", project2, user1)
crowdfunding5 = Crowdfunding.new("Crowdfunding Five", project2, user2)
crowdfunding6 = Crowdfunding.new("Crowdfunding Six", project2, user3)
crowdfunding7 = Crowdfunding.new("Crowdfunding Seven", project1, user1)
crowdfunding8 = Crowdfunding.new("Crowdfunding Eight", project2, user2)
crowdfunding9 = Crowdfunding.new("Crowdfunding Nine", project3, user3)

Pry.start
