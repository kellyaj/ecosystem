require 'animal'

class Carnivore < Animal

  def initialize(world, position)
    super(world,position)
    @food_source = []
  end

  def cycle
    super
    eat_animal if food_source_tile?
  end

  def food_source_tile?
    @world.land[@position].each do |lifeform|
      @food_source << lifeform if lifeform.is_a?(Animal)
    end
    @food_source.size >= 1
  end

  def eat_animal
    animal = @food_source.first
    @health += (animal.health / 2)
    @food_source.delete(animal)
    animal.kill
  end
end
