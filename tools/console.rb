require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
=begin
**CarOwner**

  - `CarOwner.all` Get a list of all owners

  - `CarOwner#cars` Get a list of all the cars that a specific owner has

  - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to

  - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners
=end

rosie = CarOwner.new("Rosie")
jayleno = CarOwner.new("Jay Leno")
larry = Mechanic.new("Larry", "Clunker")
chad = Mechanic.new("Chad", "Exotic")
rosie.new_car("Camry", "Toyota","Clunker",larry)
jayleno.new_car("Fancy", "Aston Martin", "Exotic",chad)
miguel = Mechanic.new("Miguel", "Exotic")
joe = Mechanic.new("Joe", "Exotic")
jayleno.new_car("Pinto", "Ford", "Clunker", larry)
=begin


**Car**

  - `Car.all` Get a list of all cars

  - `Car.classifications` Get a list of all car classifications

  - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification
=end


=begin
**Mechanic**

  - `Mechanic.all` Get a list of all mechanics

  - `Mechanic#cars` Get a list of all cars that a mechanic services

  - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic

  - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic

=end



binding.pry
