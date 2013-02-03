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
      world.add_lifeform(Cabbage.new(1,1))
      world.lifeforms.count.should == 1
    end

    it "should be able to count the population" do
      world.add_lifeform(Cabbage.new(1,1))
      world.population.should == 1
    end

  end

  describe "#environment" do
    it "should have an area of 100" do
      world = World.new(10,10)
      world.area.should == 100
    end
  end

  describe "#death" do
    it "should be able to kill a lifeform" do
      world = World.new(10,10)
      cabby = Cabbage.new(1,1)
      world.add_lifeform(cabby)
      world.population.should == 1
      world.kill(cabby)
      world.population.should == 0
    end
  end

  describe "#cycle" do
    let (:world) { World.new(10,10) }
    it "should cycle to the next day upon command" do
      world.day.should == 1
      world.cycle(1)
      world.day.should == 2
    end

    it "should cycle 100 times upon command" do
      world.day.should == 1
      world.cycle(100)
      world.day.should == 101
    end

    it "should add one age to each lifeform per cycle" do
      cabby = Cabbage.new(1,1)
      world.add_lifeform(cabby)
      cabby.age.should == 0
      world.cycle(1)
      cabby.age.should == 1
    end

    it "should check for old age deaths after each cycle" do
      world.add_lifeform(Cabbage.new(1,1))
      world.population.should == 1
      world.cycle(100)
      world.population.should == 0
    end
  end
end
