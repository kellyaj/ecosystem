require 'herbivore'

class Rabbit < Herbivore

  def initialize(world, position)
    super(world, position)
    @lifespan = 1825
    @breeding_age = 84
    @health = 100
    @breeding_delay = 35
    @movement = 1
  end


  def cycle
    super
    # other stuff
  end
end

