require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Bakery Test ###
bakery_1 = Bakery.new("Bakery One")
bakery_2 = Bakery.new("Bakery Two")
bakery_3 = Bakery.new("Bakery Three")
bakery_4 = Bakery.new("Bakery Four")
bakery_5 = Bakery.new("Bakery Five")

### Dessert Tests ###
dessert_1 = Dessert.new("Dessert One", bakery_1)
dessert_2 = Dessert.new("Dessert Two", bakery_2)
dessert_3 = Dessert.new("Dessert Three", bakery_3)
dessert_4 = Dessert.new("Dessert Four", bakery_4)
dessert_5 = Dessert.new("Dessert Five", bakery_5)

### Ingredient Tests ###
sugar1 = Ingredient.new("Sugar", dessert_1, 50)
sugar2 = Ingredient.new("Caster Sugar", dessert_2, 50)
sugar3 = Ingredient.new("Icing Sugar", dessert_5, 50)
sugar4 = Ingredient.new("Brown Sugar", dessert_4, 50)

flour1 = Ingredient.new("Wheat Flour", dessert_2, 20)
flour2 = Ingredient.new("Brown Flour", dessert_5, 20)
flour3 = Ingredient.new("Self Raising Flour", dessert_1, 20)
flour4 = Ingredient.new("Flour", dessert_3, 20)

milk1 = Ingredient.new("Milk", dessert_1, 35)
milk2 = Ingredient.new("Cows Milk", dessert_3, 35)
milk3 = Ingredient.new("Goats Milk", dessert_4, 35)
milk4 = Ingredient.new("Oat Milk", dessert_5, 35)

eggs1 = Ingredient.new("Eggs", dessert_1, 10)
eggs2 = Ingredient.new("Duck Eggs", dessert_4, 10)
eggs3 = Ingredient.new("Dinosaur Eggs", dessert_3, 10)
eggs4 = Ingredient.new("Human Eggs", dessert_2, 10)

butter1 = Ingredient.new("Butter", dessert_5, 70)
butter2 = Ingredient.new("Goats Butter", dessert_1, 70)
butter3 = Ingredient.new("Sunflower Butter", dessert_2, 70)
butter4 = Ingredient.new("Mouldy Butter", dessert_3, 70)

Pry.start
