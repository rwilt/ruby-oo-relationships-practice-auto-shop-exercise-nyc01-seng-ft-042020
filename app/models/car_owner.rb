class CarOwner
 @@all = []
  attr_reader :name
  attr_accessor :cars_owned

  def initialize(name)
    @name = name
    @@all << self
    @cars_owned = 0.0
  end

def self.all
  @@all
end

def new_car(make,model,classification, mechanic)
  Car.new(make,model,classification, mechanic,self)
  @cars_owned += 1.0
end 

def cars
  Car.all.select do |c|
    c.carowner == self
  end
end

def mechanics
  cars.map do |c|
    c.mechanic
  end
  end

  def self.average_number_of_cars
  carsum = self.all.collect do |c|
    c.cars_owned
   end.sum 

carcount = self.all.count

carsum/ carcount

  end

end
