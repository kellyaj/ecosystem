class Cabbage

  attr_accessor :movement, :lifespan, :age, :x, :y

  def initialize(x, y)
    @movement = 0
    @lifespan = 100
    @age = 0
    @x = x
    @y = y
  end

end
