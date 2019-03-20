class Rover

  attr_accessor :position
  def initialize(x, y, direction)
    @position = [x, y, direction]
    @x_axis = x
    @y_axis = y
    @direction = direction
  end
end
