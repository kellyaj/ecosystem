# world moves in days (tick), each day lifeform performs movement
# lifeform :movement_speed, :position, :health
# if lifeform health > 5, reproduce (lifeform.new)
# plants :movement_speed = 0, after 10 days = reproduce
# 
#
require 'lifeform'
class World

  attr_accessor :x, :y, :day, :lifeforms

  def initialize(x,y)
    @x = x
    @y = y
    @day = 1
    @lifeforms = []
  end

  def area
    @x * @y
  end

  def population
    @lifeforms.count
  end

  def add_lifeform(type)
    @lifeforms << Lifeform.new(type)
  end

  def cycle
    @day += 1
  end

end
