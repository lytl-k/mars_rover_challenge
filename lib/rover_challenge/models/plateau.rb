module RoverChallenge
  class Plateau
    attr_reader :x_size, :y_size

    def initialize(x_size, y_size)
      @x_size = x_size
      @y_size = y_size
    end
  end
end
