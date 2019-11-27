module RoverChallenge
  class Rover
    attr_reader :x_position, :y_position, :direction

    def initialize(x_position, y_position, direction)
      @x_position = x_position
      @y_position = y_position
      @direction = compas[direction.to_sym]
    end

    def position?
      "#{x_position} #{y_position} #{compas[direction]}"
    end

    def turn_left!
      @direction -= 1
      @direction = 4 if direction.zero?
    end

    def turn_right!
      @direction += 1
      @direction = 1 if direction > 4
    end

    def move!
      case direction
      when 1
        @y_position += 1
      when 2
        @x_position += 1
      when 3
        @y_position -= 1
      when 4
        @x_position -= 1
      end
    end

    private

    def compas
      {
        N: 1,
        E: 2,
        S: 3,
        W: 4,
        1 => :N,
        2 => :E,
        3 => :S,
        4 => :W
      }
    end
  end
end
