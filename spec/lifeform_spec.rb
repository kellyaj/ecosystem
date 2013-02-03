require 'world'
describe "LifeForm" do
  let (:life) { LifeForm.new }

  describe "#birth" do
    it "should be born with an age of 0" do
      life.age.should == 0
    end
  end

  describe "#cycling" do
    it "should gain 1 age every cycle" do
      life.cycle
      life.age.should == 1
    end
  end

  describe "#death" do
    xit "should die when it reaches old age" do
      life.age = 100
    end
  end

end
