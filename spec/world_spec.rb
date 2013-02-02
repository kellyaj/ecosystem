require 'world'
describe World do

  describe "#startup" do
    let (:world) { World.new(10,10) }
    it "should begin with 10x10 tiles" do
      world.x.should == 10
      world.y.should == 10
    end

    it "should begin on day one" do
      world.day.should == 1
    end
  end

  describe "#environment" do
    world = World.new(10,10)
    world.area.should == 100
  end

  describe "#cycle" do
    xit "should cycle to the next day upon command" do
      world = World.new(10,10)
      world.day.should == 1
    end
  end
end
