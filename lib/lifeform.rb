require 'pry'
class LifeForm

  attr_accessor :age, :lifespan, :position, :world, :breeding_age, :health, :movement, :breeding_delay

  def initialize(world, position)
    @world = world
    @position = position
    @age = 0
    @movement = 0
  end

  def cycle
    @age += 1
    breeding_age_check
    perform_movement
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

  def perform_movement
    @movement.times do
      @world.land[@position].delete(self)
      new_position = [@position - 1, @position + 1].sample
      @world.land[new_position] << self
      @position = new_position
    end
  end

end
