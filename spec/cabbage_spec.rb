require 'cabbage'

describe Cabbage do

  let (:c) {Cabbage.new}

  describe "#birth" do
    it "should be born with an age of 0" do
      c.age.should == 0
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

  describe "#death" do
    xit "should be able to die" do
      c.die.should be_true
    end
    xit "should die when its age is equal to its lifespan" do
      c.age = 100
    end
  end
end
