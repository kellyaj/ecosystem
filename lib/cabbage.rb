class Cabbage

  attr_accessor :movement, :lifespan, :age, :position

  def initialize(position)
    @movement = 0
    @lifespan = 100
    @age = 0
    @position = position
  end

end
