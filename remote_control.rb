require './lib/rover_challenge/models/plateau'
require './lib/rover_challenge/models/rover'

plateau_size = [5, 5]

rover_input = [
	{
    position: '1 2 N',
    commands: 'LMLMLMLMM'
  },
  {
    position: '3 3 E',
    commands: 'MMRMMRMRRM'
  },
  {
    position: '3 3 E',
    commands: 'MMMMMMMMMMM'
  },
  {
    position: '3 3 W',
    commands: 'MMMMMMMMMMM'
  },
  {
    position: '3 3 N',
    commands: 'MMMMMMMMMMM'
  },
  {
    position: '3 3 S',
    commands: 'MMMMMMMMMMM'
  }
]

plateau = RoverChallenge::Plateau.new(*plateau_size)
rover1 = RoverChallenge::Rover.new(1, 2, 'N', plateau)
rover2 = RoverChallenge::Rover.new(3, 3, 'E', plateau)
rover3 = RoverChallenge::Rover.new(3, 3, 'E', plateau)
rover4 = RoverChallenge::Rover.new(3, 3, 'W', plateau)
rover5 = RoverChallenge::Rover.new(3, 3, 'N', plateau)
rover6 = RoverChallenge::Rover.new(3, 3, 'S', plateau)

puts '------------------------------------'
puts 'Rover 1 position'
p rover1.position?

puts 'Move Rover 1'
rover_input[0][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover1.turn_left! if turn_direction == 'L'
  rover1.turn_right! if turn_direction == 'R'
  rover1.move! if turn_direction == 'M'
  p rover1.position?
end

puts '------------------------------------'
puts 'Rover 2 position'
p rover2.position?

puts 'Move Rover 2'
rover_input[1][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover2.turn_left! if turn_direction == 'L'
  rover2.turn_right! if turn_direction == 'R'
  rover2.move! if turn_direction == 'M'
  p rover2.position?
end

puts '------------------------------------'
puts 'Rover 3 position'
p rover3.position?

puts 'Move Rover 3'
rover_input[2][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover3.turn_left! if turn_direction == 'L'
  rover3.turn_right! if turn_direction == 'R'
  rover3.move! if turn_direction == 'M'
  p rover3.position?
end

puts '------------------------------------'
puts 'Rover 4 position'
p rover4.position?

puts 'Move Rover 4'
rover_input[2][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover4.turn_left! if turn_direction == 'L'
  rover4.turn_right! if turn_direction == 'R'
  rover4.move! if turn_direction == 'M'
  p rover4.position?
end

puts '------------------------------------'
puts 'Rover 5 position'
p rover5.position?

puts 'Move Rover 5'
rover_input[2][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover5.turn_left! if turn_direction == 'L'
  rover5.turn_right! if turn_direction == 'R'
  rover5.move! if turn_direction == 'M'
  p rover5.position?
end

puts '------------------------------------'
puts 'Rover 6 position'
p rover6.position?

puts 'Move Rover 6'
rover_input[2][:commands].split('').each do |turn_direction|
  p "Action: #{turn_direction}"
  rover6.turn_left! if turn_direction == 'L'
  rover6.turn_right! if turn_direction == 'R'
  rover6.move! if turn_direction == 'M'
  p rover6.position?
end
puts '------------------------------------'
