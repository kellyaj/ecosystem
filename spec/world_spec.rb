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

    it "should have a list of lifeforms" do
      world.lifeforms.should be_empty
    end

    it "should be able to add a lifeform" do
      world.add_lifeform(Cabbage.new)
      world.lifeforms.count.should == 1
    end

    it "should be able to count the population" do
      world.add_lifeform(Cabbage.new)
      world.population.should == 1
    end

  end

  describe "#environment" do
    it "should have an area of 100" do
      world = World.new(10,10)
      world.area.should == 100
    end
  end

  describe "#cycle" do
    it "should cycle to the next day upon command" do
      world = World.new(10,10)
      world.day.should == 1
      world.cycle
      world.day.should == 2
    end
  end
end
