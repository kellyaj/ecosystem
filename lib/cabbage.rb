require 'Lifeform'
class Cabbage < LifeForm

  attr_accessor :movement, :lifespan

  def initialize(world, position)
    super(world, position)
    @movement = 0
    @lifespan = 130
    @breeding_age = 90
  end

  def cycle
    super
    # other stuff
  end

end
