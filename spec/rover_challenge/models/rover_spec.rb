require './lib/rover_challenge/models/rover'

RSpec.describe RoverChallenge::Rover do
  context '#turn_left!' do
    rover = RoverChallenge::Rover.new(1, 2, 'N', nil)

    it 'should change direction' do
      expect(rover.direction).to eql 1
      rover.turn_left!
      expect(rover.direction).to eql 4
    end
  end

  context '#turn_right!' do
    rover = RoverChallenge::Rover.new(1, 2, 'N', nil)

    it 'should change direction' do
      expect(rover.direction).to eql 1
      rover.turn_right!
      expect(rover.direction).to eql 2
    end
  end

  context '#move!' do
    context 'pointing North' do
    rover = RoverChallenge::Rover.new(1, 2, 'N', nil)
      it 'should increase y_position by 1' do
        rover.move!
        expect(rover.x_position).to eql 1
        expect(rover.y_position).to eql 3
      end
    end


    context 'pointing East' do
    rover = RoverChallenge::Rover.new(1, 2, 'E', nil)
      it 'should increase x_position by 1' do
        rover.move!
        expect(rover.x_position).to eql 2
        expect(rover.y_position).to eql 2
      end
    end


    context 'pointing South' do
    rover = RoverChallenge::Rover.new(1, 2, 'S', nil)
      it 'should decrease y_position by 1' do
        rover.move!
        expect(rover.x_position).to eql 1
        expect(rover.y_position).to eql 1
      end
    end


    context 'pointing West' do
    rover = RoverChallenge::Rover.new(1, 2, 'W', nil)
      it 'should decrease x_position by 1' do
        rover.move!
        expect(rover.x_position).to eql 0
        expect(rover.y_position).to eql 2
      end
    end
  end
end