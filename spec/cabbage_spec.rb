require 'cabbage'

describe Cabbage do

  let (:c) {Cabbage.new(1)}

  describe "#birth" do
    it "should be born with an age of 0" do
      c.age.should == 0
    end

    it "should be able to spawn in the first row" do
      c.position.should == 1
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
