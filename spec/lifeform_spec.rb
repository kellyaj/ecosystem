describe "LifeForm" do
  
  describe "#birth" do
    it "should be born with a type" do
      life = Lifeform.new(Cabbage.new)
      life.type.should == Cabbage
    end
  end
end
