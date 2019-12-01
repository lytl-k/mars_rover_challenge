# frozen_string_literal: true

desc 'Used to give the rover input and make it va-va-vroom'

task :run_rover do
  require './lib/rover_challenge/models/rover'
  require './lib/rover_challenge/models/plateau'
  require './lib/rover_challenge/services/remote_control'
  require 'tty-prompt'

  prompt = TTY::Prompt.new

  puts 'Well, how big is this plateau?'
  x_size = prompt.ask('Please enter the size of the x-axis').to_i
  y_size = prompt.ask('Please enter the size of the y-axis').to_i

  plateau = RoverChallenge::Plateau.new(x_size, y_size)
  remote_control = RoverChallenge::Services::RemoteControl.new(plateau)

  another = true

  while another
    puts 'Please starting co-ordinates for the rover'
    x_coord = prompt.ask('Enter x co-ordinate').to_i
    y_coord = prompt.ask('Enter y co-ordinate').to_i
    direction = prompt.select("Please enter rover's direction", %w[N W E S])

    rover = RoverChallenge::Rover.new(x_coord, y_coord, direction, plateau)

    puts 'Command list:'
    puts 'L: Turn left'
    puts 'R: Turn right'
    puts 'M: Move Forward'
    puts 'Example: LMRLMRLMRLM'
    commands = prompt.ask('Please enter commands for rover')

    remote_control.add_rover!(rover)
    remote_control.go_rover_go!(commands)

    another = prompt.yes?('Do you want to add another rover?')
  end

  plateau.rovers.each_with_index do |plateau_rover, index|
    p "Rover #{index + 1} final position: #{plateau_rover.position?}"
  end
end
