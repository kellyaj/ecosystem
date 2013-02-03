require 'garlic'
require 'world'

describe Garlic do
  let (:world) { World.new(100) }
  let (:g) { Garlic.new(world, 35) }
  # before (:each) do
  #   world.add_lifeform(g)
  # end

  describe "#birth" do
    it "should be born into the world" do
      world.add_lifeform(g)
      world.population.should == 1
    end

    it "should be born with a health of 5" do
      g.health.should == 5
    end
  end

  describe "#test" do
    c = Cabbage.new(world, 74)
    100.times do
      c.cycle
    end
    binding.pry
  end

end
