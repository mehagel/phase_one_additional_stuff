class Animal
  attr_accessor :num_legs, :blood_type, :eyes, :birth_type

  def initialize
    @num_legs
    @blood_type
    @eyes 
    @birth_type 
  end

end

class Mammal  < Animal
  def animal 
    @blood_type = "warm blooded"
    @eyes = 2 
    @fur = true
    @birth_type = "live birth"
    @num_legs
  end
end

class Amphibian < Animal
  @blood_type = "cold blooded"
  @birth_type = "eggs"
end
module Superpowers
  @morphing
  @run_speed_light
  @stop_bullets


end

class Primate < Mammal
def animal
  @num_legs = 2 
  super
end
end

class Frog < Amphibian

end

class Bat < Mammal

end

class Chimpanzee < Primate

end

p my_primate = Primate.new 
p my_primate.eyes
p chimpanzee = Chimpanzee.new


