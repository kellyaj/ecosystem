require 'cabbage'

class Lifeform

  attr_accessor :type

  def initialize(type)
    @type = type.class
  end
end
