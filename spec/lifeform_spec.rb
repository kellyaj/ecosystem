require 'world'
describe "LifeForm" do
  let (:life) { LifeForm.new }

  describe "#birth" do
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
  end

  describe "#cycling" do
    it "should gain 1 age every cycle" do
      life.cycle
      life.age.should == 1
    end
  end

  describe "#death" do
    it "should die when it reaches old age" do
      world = World.new(10)
      life.world = world
      life.position = 1
      world.add_lifeform(life)
      life.lifespan = 100
      100.times do
        life.cycle
      end
      life.age.should == 100
    end
  end

end
