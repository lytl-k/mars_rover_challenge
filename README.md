## Mars Rover Challenge

[Link to challenge](https://code.google.com/archive/p/marsrovertechchallenge/)

#### Assumptions made during the challenge
- More than a single Rover can occupy the same space 
  - It's mars, a grid block could be square kilometers in size, we wouldn't know...
- The Rovers cannot go outside the bounds of the Plateau it's on
    - It will stand still when it moves towards a wall / bounds

#### Known faults
- There is minimum error handling 
  - You can create a plateau of size 0, 0 (which should be impossible)
  - You can enter anything when asked for the size of the plateau or the position of the rover (this could break if you enter something other than a number)

#### First Phase
- In this phase I made sure that the basic structure works and that the Rover and Plateau models work together as they should.
- I wrote some hardcoded inputs in `remote_control.rb` to make sure that the code works as intended.
  - The input in this file was the basic input in the challenge as well as 4 more inputs to test whether the rover goes out of bounds in any direction.
- This code is run by using: `ruby remote_control.rb`

#### Second Phase
- In this phase I moved away from the hardcoded remote_control and added a rake task to run it with
  - This rake task gives the user a basic interface to work with and control multiple rovers in succession

#### Third Phase
- This phase was used to add some automated tests
  - These tests were used to prove that at least the challenge parameters were met

#### Fourth Phase
- Add Dockerfile that can be used to quickly spin up a docker image
  - This increases ease of use for any user that knows a little about docker

#### Playing with the rovers... They're like little toys!! Kinda...
There are a few different ways of doing this:
- Way 1
  - Install Ruby
  - Run `bundle install`
  - Run `bundle exec rake run_rover`

- Way 2
  - Install Docker
  - Build the docker image by using `docker image build -t rover:1.0 .`
  - Run the docker image by using `docker run -it rover:1.0 bundle exec rake run_rover`

#### Running automated testing
- The project uses something called RSpec for unit tests.
  - These tests can be run by using `bundle exec rspec`
  - The code can be checked under `spec/rover_challenge/`
  - This can either be done by Way 1 where ruby is installed and you run the command or...
  - the docker image can be used to run this (`docker run -it rover:1.0 bundle exec rspec`)