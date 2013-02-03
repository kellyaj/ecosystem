require 'plant'


class Garlic < Plant

  def initialize(world, position)
    super(world,position)
    @health = 5
    @breeding_age = 48
    @lifespan = 108
  end

  def cycle
    super
  end
end
