require 'Lifeform'
class Cabbage < LifeForm

  attr_accessor :movement, :lifespan, :position

  def initialize(world, position)
    @movement = 0
    @lifespan = 100
    @position = position
    @world = world
  end

  def cycle
    super
    # other stuff
  end

end
