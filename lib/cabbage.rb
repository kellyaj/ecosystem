require 'Lifeform'
class Cabbage < LifeForm

  attr_accessor :movement, :lifespan, :age, :position

  def initialize(world, position)
    @movement = 0
    @lifespan = 100
    @age = 0
    @position = position
    @world = world
  end

  def cycle
    super
    # other stuff
  end

end
