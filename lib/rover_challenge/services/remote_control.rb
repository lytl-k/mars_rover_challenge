# frozen_string_literal: true

module RoverChallenge
  module Services
    class RemoteControl
      attr_accessor :current_rover

      def initialize(plateau)
        @plateau = plateau
      end

      def add_rover!(rover)
        @plateau.rovers << rover
        @current_rover = rover
      end

      def go_rover_go!(commands)
        commands.split('').each do |command|
          p "Action: #{command}"

          current_rover.turn_left! if command == 'L'
          current_rover.turn_right! if command == 'R'
          current_rover.move! if command == 'M'
        end
      end
    end
  end
end
