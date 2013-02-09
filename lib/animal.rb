require 'lifeform'

class Animal < LifeForm

  def initialize(world, position)
    super(world, position)
    @food_source = []
  end

  def cycle
    super
    eat if food_source_tile?
  end

  def food_source_tile?
    @world.land[@position].each { |lifeform| @food_source << lifeform if lifeform.is_a?(@food_type) }
    @food_source.size >= 1
  end

  def eat
    food = @food_source.first
    @health += (food.health / 2)
    @food_source.delete(food)
    food.kill
  end

end
