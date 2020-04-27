class Car
@@all = []
  attr_reader :make, :model, :classification
  attr_accessor :mechanic, :carowner

  def initialize(make, model, classification, mechanic, carowner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @carowner = carowner
    @@all << self
  end

  def self.all
    @@all
  end
  

  def self.classifications
    self.all.map do |c|
      c.classification
    end
  end

  def self.find_mechanics(classification)
   Mechanic.all.select do |m|
    m.specialty == classification
   end   #select classifications
   # do these match to a mechanics?
  end 

end
