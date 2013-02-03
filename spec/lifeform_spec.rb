describe "LifeForm" do
  
  describe "#birth" do
    it "should be born with a type" do
      life = Lifeform.new(Cabbage.new(1))
      life.type.should == Cabbage
    end
  end
end
