require 'rspec'
require './lib/car'
require './lib/engine'

describe "Car" do
  context "creating" do
    it "engine should be present" do
      car = Car.new(Engine.new(4))
      car.engine.should_not be_nil
    end
  end

  context "moving" do
    it "engine should accelerate" do
      engine = Engine.new(4)
      car = Car.new(engine)
      expect(engine).to receive(:accelerate)
      car.move
    end
  end
end
