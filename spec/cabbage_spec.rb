require 'cabbage'
require 'world'
describe Cabbage do

  let (:c) {Cabbage.new(World.new(10),1)}

  describe "#birth" do
    it "should be born with an age of 0" do
      c.age.should == 0
    end

    it "should be able to spawn in the first row" do
      c.position.should == 1
    end

    it "should be born into a world" do
      c.world.should be_a(World)
    end

    it "should be born to a specific position" do
      c.position.should == 1
      c.world.add_lifeform(c)
      c.world.land[1].should include(c)
    end

  end

  describe "#attributes" do
    it "should have a movement of zero" do
      c.movement.should == 0
    end

    it "should have a lifespan of 100 days" do
      c.lifespan.should == 100
    end

  end

end
