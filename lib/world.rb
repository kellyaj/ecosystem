# world moves in days (tick), each day lifeform performs movement
# lifeform :movement_speed, :position, :health
# if lifeform health > 5, reproduce (lifeform.new)
# plants :movement_speed = 0, after 10 days = reproduce
#
#
require 'pry'
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

  def add_lifeform(lifeform)
    @lifeforms << lifeform
  end

  def cycle(amount)
    amount.times do
      @day += 1
      add_age
      old_age_check
    end
  end

  def add_age
    @lifeforms.each do |lifeform|
      lifeform.age += 1
    end
  end

  def old_age_check
    @lifeforms.each do |lifeform|
      if lifeform.lifespan == lifeform.age
        kill(lifeform)
      end
    end
  end

  def kill(lifeform)
    @lifeforms.delete(lifeform)
  end

  def same_space?(lifeform1, lifeform2)
    lifeform1.position == lifeform2.position
  end

  def same_space_check
  end

end
