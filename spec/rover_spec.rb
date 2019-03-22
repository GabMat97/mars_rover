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

  # it "tests for move and direction change" do
  #   rover = Rover.new(1, 1, "N")
  #   expect(rover.turn_left).to eq([1, 1, "W"])
  #   p rover.turn_left
  #   expect(rover.move).to eq([0, 1, "W"])
  # end

  it "tests for TW requirements" do
    rover = Rover.new(1, 2, "N")
    p rover.turn_left
    p rover.move
    p rover.turn_left
    p rover.move
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
    expect(rover2.move).to eq([5, 1, "E"])
  end
end
