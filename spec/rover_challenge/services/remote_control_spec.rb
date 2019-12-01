require './lib/rover_challenge/models/rover'
require './lib/rover_challenge/models/plateau'
require './lib/rover_challenge/services/remote_control'

RSpec.describe RoverChallenge::Services::RemoteControl do
  context '#add_rover!' do
    plateau = RoverChallenge::Plateau.new(5, 5)
    remote_control = RoverChallenge::Services::RemoteControl.new(plateau)
    rover = RoverChallenge::Rover.new(1, 2, 'N', plateau)
    rover2 = RoverChallenge::Rover.new(3, 3, 'S', plateau)

    it 'should increase the number of rovers on the plateau' do
      remote_control.add_rover!(rover)
      expect(plateau.rovers.count).to eql 1
      remote_control.add_rover!(rover2)
      expect(plateau.rovers.count).to eql 2
    end
  end

  context '#go_rover_go!' do
    plateau = RoverChallenge::Plateau.new(5, 5)
    remote_control = RoverChallenge::Services::RemoteControl.new(plateau)
    rover = RoverChallenge::Rover.new(1, 2, 'N', plateau)
    rover2 = RoverChallenge::Rover.new(3, 3, 'E', plateau)

    it 'It should move the rovers to the correct position on the plateau' do
      remote_control.add_rover! rover
      remote_control.go_rover_go! 'LMLMLMLMM'
      expect(rover.position?).to eql plateau.rovers.first.position?
      expect(rover.position?).to eql '1 3 N'


      remote_control.add_rover! rover2
      remote_control.go_rover_go! 'MMRMMRMRRM'
      expect(rover2.position?).to eql plateau.rovers.last.position?
      expect(rover2.position?).to eql '5 1 E'
    end
  end
end