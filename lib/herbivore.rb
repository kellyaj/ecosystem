require 'pry'
require 'animal'

class Herbivore < Animal

  def initialize(world, position)
    super(world, position)
    @food_type = Plant
  end

  def cycle
    super
  end

end
