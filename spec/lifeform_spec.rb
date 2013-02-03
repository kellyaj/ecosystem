require 'world'
describe "LifeForm" do
  
  describe "#birth" do
    xit "should be born with a type" do
      life = LifeForm.new(Cabbage.new(World.new,1))
      life.type.should == Cabbage
    end
  end

  describe "#death" do
    let (:life) { LifeForm.new(Cabbage.new(World.new,1)) }

    xit "should die when it reaches old age" do
      life.age = 100
    end
  end

end
