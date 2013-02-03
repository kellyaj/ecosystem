class LifeForm

  attr_accessor :age, :lifespan, :position, :world

  def initialize
    @age = 0
  end

  def cycle
    @age += 1
    old_age_check
  end

  def old_age_check
    self.kill if @age == @lifespan
  end

  def kill
    @world.lifeforms.delete self
  end

end
