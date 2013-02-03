require 'rabbit'
describe Rabbit do

  let (:r) { Rabbit.new(World.new(10),1) }

  describe "#birth" do
    it "should be born with an age of 0" do
      r.age.should == 0
    end

    it "should have a lifespan of 1825" do
      r.lifespan.should == 1825
    end

    it "should be born into a position in the world" do
      r.world.add_lifeform(r)
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
  end
end
