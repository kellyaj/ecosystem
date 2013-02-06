require 'lifeform'
require 'pry'

class World

  attr_accessor :land, :day, :lifeforms

  def initialize(world_rows)
    @land = []
    add_land(world_rows)
    @day = 1
    @lifeforms = []
  end

  def add_land(world_rows)
    world_rows.times do |row|
      @land[row] = []
    end
  end

  def population
    @lifeforms.count
  end

  def add_lifeform(lifeform)
    @lifeforms << lifeform
    @land[lifeform.position] << lifeform
  end

  def cycle(amount)
    amount.times do
      @day += 1
      @lifeforms.each {|lifeform| lifeform.cycle }
      same_space_check
    end
  end

  def same_space?(lifeform1, lifeform2)
    lifeform1.position == lifeform2.position
  end

  def same_space_check
    @land.each do |space|
      if space.size >= 2
        smite(space.sample)
      end
    end
  end

  def smite(lifeform)
    @lifeforms.delete(lifeform)
  end

end
