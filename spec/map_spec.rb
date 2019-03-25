require_relative '../lib/map'
describe RSpec do
  it "initializes map with coordinates" do
    map = Map.new(5, 5)
    expect(map.x_limit).to eq(5)
    expect(map.y_limit).to eq(5)
  end
end
