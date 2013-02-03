require 'pry'
require 'rabbit'
require 'animal'
require 'world'
require 'herbivore'
require 'lifeform'

describe Rabbit do

  let (:world) { World.new(100) }
  let (:r) { Rabbit.new(world, 50) }
  before(:each) do
    world.add_lifeform(r)
  end

  describe "#birth" do
    it "should be born with an age of 0" do
      r.age.should == 0
    end

    it "should have a lifespan of 1825" do
      r.lifespan.should == 1825
    end

    it "should be born into a position in the world" do
      r.world.land[r.position].should include(r)
    end

    it "should have a breeding age of 84" do
      r.breeding_age.should == 84
    end

    it "should be born with a health of 100" do
      r.health.should == 100
    end

    it "should have a breeding delay of 35 days" do
      r.breeding_delay.should == 35
    end

    it "should be born with a movement of 1" do
      r.movement.should == 1
    end
  end

  describe "#life" do

    it "should breed" do
      85.times do
        r.cycle
      end
      r.age.should  == 85
      world.population.should == 2
    end

    it "should test" do
      100.times do
        r.cycle
      end
    end
  end
end
