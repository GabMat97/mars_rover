class Rover

  attr_accessor :position
  def initialize(x, y, direction)
    @x_axis = x
    @y_axis = y
    @direction = direction
    @position = []
    update_position

  end

  def update_position
    @position =  [@x_axis, @y_axis, @direction]
    return @position
  end

  def increase_x
    @x_axis = @x_axis + 1
    update_position
  end

  def decrease_x
    @x_axis = @x_axis - 1
    update_position
  end

  def increase_y
    @y_axis = @y_axis + 1
    update_position
  end

  def decrease_y
    @y_axis = @y_axis - 1
    update_position
  end

  def turn_right
    if @position[2] == "N"
      @position.pop
      @position.push("E")
    elsif @position[2] == "E"
      @position.pop
      @position.push("S")
    elsif @position[2] == "S"
      @position.pop
      @position.push("W")
    elsif @position[2] == "W"
      @position.pop
      @position.push("N")
    end
  end

  def turn_left
    if @position[2] == "N"
      @position.pop
      @position.push("W")
    elsif @position[2] == "W"
      @position.pop
      @position.push("S")
    elsif @position[2] == "S"
      @position.pop
      @position.push("E")
    elsif @position[2] == "E"
      @position.pop
      @position.push("N")
    end
  end
  def move
    case @position[2]
    when 'N'
      # @position[1] += 1
      @y_axis = @y_axis + 1
      @position = [@x_axis, @y_axis, 'N']
    when 'E'
      # @position[0] += 1
      @x_axis = @x_axis + 1
      @position = [@x_axis, @y_axis, 'E']
    when 'S'
      # @position[1] -= 1
      @y_axis = @y_axis - 1
      @position = [@x_axis, @y_axis, 'S']
    when 'W'
      # @position[0] -= 1
      @x_axis = @x_axis - 1
      @position = [@x_axis, @y_axis, 'W']
    end
  end
  # def move
  #   if @position[2] == "N"
  #     @y_axis = @y_axis + 1
  #     update_position
  #     return @position
  #   elsif @position[2] == "E"
  #     @x_axis = @x_axis + 1
  #     update_position
  #     return @position
  #   elsif @position[2] == "S"
  #     @y_axis = @y_axis - 1
  #     update_position
  #     return @position
  #   elsif @position[2] == "W"
  #     @x_axis = @x_axis - 1
  #     update_position
  #     return @position
  #   end
  # end
end
