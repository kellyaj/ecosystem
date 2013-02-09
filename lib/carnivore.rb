require 'animal'

class Carnivore < Animal

  def initialize(world, position)
    super(world,position)
    @food_type = Animal
  end

  def cycle
    super
  end

end
