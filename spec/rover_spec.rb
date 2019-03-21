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

  it "tests for rightwards direction change when facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.turn_right).to eq([0, 0, "E"])
  end

  it "test for rightwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_right).to eq([0, 0, "S"])
  end

  it "test for rightwards direction change when facing South" do
    rover = Rover.new(0, 0, "S")
    expect(rover.turn_right).to eq([0, 0, "W"])
  end

  it "test for rightwards direction change when facing West" do
    rover = Rover.new(0, 0, "W")
    expect(rover.turn_right).to eq([0, 0, "N"])
  end

  it "test for rightwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_right).to eq([0, 0, "S"])
  end

  it "tests for leftwards direction change when facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.turn_left).to eq([0, 0, "W"])
  end

  it "tests for leftwards direction change when facing East" do
    rover = Rover.new(0, 0, "W")
    expect(rover.turn_left).to eq([0, 0, "S"])
  end

  it "tests for leftwards direction change when facing South" do
    rover = Rover.new(0, 0, "S")
    expect(rover.turn_left).to eq([0, 0, "E"])
  end

  it "tests for leftwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_left).to eq([0, 0, "N"])
  end

  it "tests for move when facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.move).to eq([0, 1, "N"])
  end

  it "tests for move when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.move).to eq([1, 0, "E"])
  end

  it "tests for move when facing South" do
    rover = Rover.new(0, 1, "S")
    expect(rover.move).to eq([0, 0, "S"])
  end

  it "tests for move when facing West" do
    rover = Rover.new(1, 0, "W")
    expect(rover.move).to eq([0, 0, "W"])
  end
end
