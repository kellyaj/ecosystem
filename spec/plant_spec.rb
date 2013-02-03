require 'plant'
describe Plant do
  let (:world) { World.new(100) }
  let (:plant) { Plant.new(world, 50) }

  describe "#attributes" do
    it "should be born with a movement speed of zero" do
      plant.movement.should == 0
    end
  end
end
