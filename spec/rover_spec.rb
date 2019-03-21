require_relative '../lib/rover'

describe RSpec do
  it "initialises rover at default value facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.position).to eq([0, 0, "N"])
  end

  it "tests for x going up by one" do
    rover = Rover.new(0, 0, "N")
    expect(rover.increase_x).to eq([1, 0, "N"])
  end

  it "tests for x going down by one" do
    rover = Rover.new(1, 0, "N")
    expect(rover.decrease_x).to eq([0, 0, "N"]) #will add logic of direction later
  end

  it "tests for y going up by one" do
    rover = Rover.new(0, 0, "N")
    expect(rover.increase_y).to eq([0, 1, "N"])
  end

  it "tests for y going down by one" do
    rover = Rover.new(0, 1, "N")
    expect(rover.decrease_y).to eq([0, 0, "N"])
  end
end
