# frozen_string_literal: true

module RoverChallenge
  class Plateau
    attr_reader :x_size, :y_size
    attr_accessor :rovers

    def initialize(x_size, y_size)
      @x_size = x_size
      @y_size = y_size
      @rovers = []
    end
  end
end
