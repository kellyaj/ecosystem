require 'pry'
require 'animal'

class Herbivore < Animal

  def initialize(world, position)
    super(world, position)
    @food_source = []
  end

  def cycle
    super
    eat_plant if food_source_tile?
  end

  def food_source_tile?
    @world.land[@position].each do |lifeform|
      @food_source << lifeform if lifeform.is_a?(Plant)
    end
    @food_source.size >= 1
  end

  def eat_plant
    plant = @food_source.first
    @health += plant.health
    @food_source.delete(plant)
    plant.kill
  end
end
