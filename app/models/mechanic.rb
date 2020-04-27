class Mechanic
@@all = []
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |c|
    c.mechanic == self
  end
end

def car_owners
  cars.map do |c|
    c.carowner
  end
end

def car_owners_names
  cars.map do |c|
    c.carowner.name
  end
end



end
