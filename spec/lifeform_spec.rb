require 'world'
describe "LifeForm" do
  let (:world) { World.new(10) }
  let (:life) { LifeForm.new(world, 1) }

  describe "#birth" do
    it "should be born into a world" do
      life.world.should be_a(World)
    end

    it "should be born with an age of 0" do
      life.age.should == 0
    end

    it "should have a life span" do
      life.lifespan = 100
      life.lifespan.should == 100
    end

    it "should spawn at a specific position" do
      life.position = 1
      life.position.should == 1
    end

    it "should be born with a breeding age" do
      life.breeding_age = 1
      life.breeding_age.should == 1
    end
  end

  describe "#cycling" do
    it "should gain 1 age every cycle" do
      life.cycle
      life.age.should == 1
    end
  end

  describe "#breeding" do
    it "should create a new copy of itself when it reaches breeding age" do
      world.add_lifeform(life)
      life.breeding_age = 50
      50.times do
        life.cycle
      end
      life.world.lifeforms.count.should == 2
    end
  end

  describe "#death" do
    it "should die when it reaches old age" do
      life.position = 1
      world.add_lifeform(life)
      life.lifespan = 100
      100.times do
        life.cycle
      end
      life.age.should == 100
      life.world.lifeforms.should_not include(life)
    end
  end

end
