class LifeForm

  attr_accessor :age

  def initialize
    @age = 0
  end

  def cycle
    @age += 1
  end

end
