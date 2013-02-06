require 'world'
require 'lifeform'
require 'plant'

describe World do

  describe "#startup" do

    let (:world) { World.new(10) }

    it "should begin with 10 world rows" do
      world.land.size.should == 10
    end

    it "should begin on day one" do
      world.day.should == 1
    end

    it "should have a list of lifeforms" do
      world.lifeforms.should be_empty
    end

    it "should be able to add a lifeform" do
      world.add_lifeform(Cabbage.new(self,1))
      world.lifeforms.count.should == 1
    end

    it "should be able to count the population" do
      world.add_lifeform(Cabbage.new(self,1))
      world.population.should == 1
    end

  end

  describe "#environment" do
    let (:world) { World.new(10) }
    it "should smite one lifeform at the end of a day if it occupies same space" do
      cabby = Cabbage.new(self,1)
      cabby2 = Cabbage.new(self,1)
      world.add_lifeform(cabby)
      world.add_lifeform(cabby2)
      world.population.should == 2
      world.cycle(1)
      world.population.should == 1
    end

    it "should be able to add a lifeform to the correct world_row" do
      cabby = Cabbage.new(self,1)
      world.add_lifeform(cabby)
      world.land[1].should include(cabby)
    end
  end

  describe "#death" do
    it "should be able to smite a lifeform" do
      world = World.new(10)
      cabby = Cabbage.new(world,1)
      world.add_lifeform(cabby)
      world.population.should == 1
      world.smite(cabby)
      world.population.should == 0
    end
  end

  describe "#cycle" do
    let (:world) { World.new(10) }
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

    it "should cycle each lifeform when the world cycles" do
      c = Cabbage.new(world,1)
      world.add_lifeform(c)
      world.day.should == 1
      world.cycle(1)
      world.lifeforms.first.age.should == 1
    end

  end
end
