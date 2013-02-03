require 'pry'
class LifeForm

  attr_accessor :age, :lifespan, :position, :world, :breeding_age

  def initialize(world, position)
    @world = world
    @position = position
    @age = 0
  end

  def cycle
    @age += 1
    breeding_age_check
    old_age_check
  end

  def old_age_check
    self.kill if @age == @lifespan
  end

  def kill
    @world.lifeforms.delete self
  end

  def breeding_age_check
    reproduce if @age == @breeding_age
  end

  def reproduce
    offspring = self.clone
    offspring.age = 0
    offspring.position = [self.position + 1, self.position - 1].sample
    @world.add_lifeform(offspring)
  end

end
