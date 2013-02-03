require 'lifeform'
class Rabbit < LifeForm

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

# when it eats something, it gains that objects health
# health is lost after every day after last meal
# reproduction is limited based on health
# delay breeding based on recovery time
