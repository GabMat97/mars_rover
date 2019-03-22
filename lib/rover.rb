class Rover

  attr_accessor :x_axis, :y_axis, :direction
  def initialize(x, y, direction)
    @x_axis = x
    @y_axis = y
    @direction = direction
  end

  def position
    return [@x_axis, @y_axis, @direction]
  end

  def increase_x
    @x_axis += 1
  end

  def decrease_x
    @x_axis -= 1
  end

  def increase_y
    @y_axis += 1
  end

  def decrease_y
    @y_axis -= 1
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    end
  end

  def move
    case @direction
    when 'N'
      increase_y
    when 'E'
      increase_x
    when 'S'
      decrease_y
    when 'W'
      decrease_x
    end
  end
end
