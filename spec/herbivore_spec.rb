require 'world'
require 'animal'
require 'herbivore'
require 'plant'

describe "Herbivore" do
  let (:world) { World.new(150) }
  let (:herby) { Herbivore.new(world, 50) }
  let (:planty) { Plant.new(world,50) }

  it "should eat a plant if it is in the same place" do
    herby.health = 30
    planty.health = 10
    world.add_lifeform(herby)
    world.add_lifeform(planty)
    world.lifeforms.count.should == 2
    world.cycle(1)
    world.lifeforms.count.should == 1
    herby.health.should == 35
  end
end
