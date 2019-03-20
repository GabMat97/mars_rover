require_relative '../lib/rover'

describe RSpec do
  it "initialises rover at default value facing North" do
    rover = Rover.new(0, 0, "N")
    expect(rover.position).to eq([0, 0, "N"])
  end
end
