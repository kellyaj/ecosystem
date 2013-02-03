class LifeForm

  attr_accessor :age, :lifespan, :position, :world, :breeding_age

  def initialize(world, position)
    @world = world
    @position = position
    @age = 0
  end

  def cycle
    @age += 1
    old_age_check
  end

  def old_age_check
    self.kill if @age == @lifespan
  end

  def kill
    @world.lifeforms.delete self
  end

end
