require 'lifeform'
class Plant < LifeForm

  def initialize(world, position)
    super(world, position)
    @movement = 0
  end

  def cycle
    super
  end
end
