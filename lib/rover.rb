class Rover

  attr_accessor :position
  def initialize(x, y, direction)
    @x_axis = x
    @y_axis = y
    @direction = direction
    update_position

  end
  def update_position
    @position =  [@x_axis, @y_axis, @direction]
  end

  def increase_x
    @x_axis = @x_axis + 1
    update_position
    return @position
  end

  def decrease_x
    @x_axis = @x_axis - 1
    update_position
    return @position
  end

  def increase_y
    @y_axis = @y_axis + 1
    update_position
    return @position
  end

  def decrease_y
    @y_axis = @y_axis - 1
    update_position
    return @position
  end
end
