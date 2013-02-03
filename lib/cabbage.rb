require 'Lifeform'
require 'plant'

class Cabbage < Plant

  def initialize(world, position)
    super(world, position)
    @movement = 0
    @lifespan = 130
    @breeding_age = 90
    @health = 10
  end

  def cycle
    super
    # other stuff
  end

end
