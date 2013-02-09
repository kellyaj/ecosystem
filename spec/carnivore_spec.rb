require 'pry'
require 'carnivore'
require 'herbivore'
require 'world'

describe "Carnivore" do
  let (:world) { World.new(150) }
  let (:carny) { Carnivore.new(world, 50) }
  let (:herby) { Herbivore.new(world, 50) }

  describe "#eating" do

    it "should eat another animal" do
      herby.health = 20
      carny.health = 60
      world.add_lifeform(carny)
      world.add_lifeform(herby)
      carny.position.should == 50
      herby.position.should == 50
      world.population.should == 2
      world.cycle(1)
      world.population.should == 1
    end

  end
end

