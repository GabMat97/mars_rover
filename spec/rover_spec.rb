require_relative '../lib/rover'

describe RSpec do
  it "initialises rover at default value facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.direction).to eq("N")
    expect(rover.x_axis).to eq(0)
    expect(rover.y_axis).to eq(0)
  end

  it "tests for x going up by one" do
    rover = Rover.new(0, 0, "N")
    expect(rover.increase_x).to eq(1)
  end

  it "tests for x going down by one" do
    rover = Rover.new(1, 0, "N")
    expect(rover.decrease_x).to eq(0)
  end

  it "tests for y going up by one" do
    rover = Rover.new(0, 0, "N")
    expect(rover.increase_y).to eq(1)
  end

  it "tests for y going down by one" do
    rover = Rover.new(0, 1, "N")
    expect(rover.decrease_y).to eq(0)
  end

  it "tests for rightwards direction change when facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.turn_right).to eq("E")
  end

  it "test for rightwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_right).to eq("S")
  end

  it "test for rightwards direction change when facing South" do
    rover = Rover.new(0, 0, "S")
    expect(rover.turn_right).to eq("W")
  end

  it "test for rightwards direction change when facing West" do
    rover = Rover.new(0, 0, "W")
    expect(rover.turn_right).to eq("N")
  end

  it "test for rightwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_right).to eq("S")
  end

  it "tests for leftwards direction change when facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.turn_left).to eq("W")
  end

  it "tests for leftwards direction change when facing East" do
    rover = Rover.new(0, 0, "W")
    expect(rover.turn_left).to eq("S")
  end

  it "tests for leftwards direction change when facing South" do
    rover = Rover.new(0, 0, "S")
    expect(rover.turn_left).to eq("E")
  end

  it "tests for leftwards direction change when facing East" do
    rover = Rover.new(0, 0, "E")
    expect(rover.turn_left).to eq("N")
  end

  it "tests for move when facing North" do
    rover = Rover.new(0, 0, "N")
    rover.move
    expect(rover.y_axis).to eq(1)
  end

  it "tests for move when facing East" do
    rover = Rover.new(0, 0, "E")
    rover.move
    expect(rover.x_axis).to eq(1)
  end

  it "tests for move when facing South" do
    rover = Rover.new(0, 1, "S")
    rover.move
    expect(rover.y_axis).to eq(0)
  end

  it "tests for move when facing West" do
    rover = Rover.new(1, 0, "W")
    rover.move
    expect(rover.x_axis).to eq(0)
  end

  it "tests for TW requirements" do
    rover = Rover.new(1, 2, "N")
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.move
    expect(rover.position).to eq([1, 3, "N"])
    rover2 = Rover.new(3, 3, "E")
    rover2.move
    rover2.move
    rover2.turn_right
    rover2.move
    rover2.move
    rover2.turn_right
    rover2.move
    rover2.turn_right
    rover2.turn_right
    rover2.move
    expect(rover2.position).to eq([5, 1, "E"])
  end
end
