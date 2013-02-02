# x,y grid system world
# world moves in days (tick), each day lifeform performs movement
# lifeform :movement_speed, :position, :health
# if lifeform health > 5, reproduce (lifeform.new)
# plants :movement_speed = 0, after 10 days = reproduce
# 
#

class World

  attr_accessor :x, :y, :day

  def initialize(x,y)
    @x = x
    @y = y
    @day = 1
  end

  def area
    @x * @y
  end

end
